// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.2 <0.9.0;


contract Exerise1 {

    bool private b = true;
    uint private x;

    /**Ex1*/
    function get_b() public view returns(bool) {
        return b;
    }

    /**EX2*/
    function addToX(uint y) public {
        x += y;
    }

    /**Ex3*/
    modifier increaseXCondition(uint y) {
        require(y > x, 'y must greater than x');
        x = y;
        _;
    }

    function increaseX(uint y) public increaseXCondition(y) {

    }

    /**Ex4*/
    function returnTwo() public pure returns(int x1, bool y1) {
        x1 = -2;
        y1 = true;
    }
}