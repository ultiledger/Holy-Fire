pragma solidity ^0.4.23;

import "./StandardToken.sol";

contract HolyFire is StandardToken {
  string public name = "HolyFire";
  string public symbol = "HF";
  uint8 public decimals = 18;
  uint256 public INITIAL_SUPPLY = 1000 * 10**uint256(decimals);

  constructor(address _owner) public {
    require(address(0) != _owner);

    totalSupply_ = INITIAL_SUPPLY;
    balances[_owner] = INITIAL_SUPPLY;
  }
}
