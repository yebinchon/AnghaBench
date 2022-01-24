#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int UINT64 ;
typedef  int UINT32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  ASL_DEBUG_OUTPUT ; 
 int /*<<< orphan*/  ASL_ERROR ; 
 int /*<<< orphan*/  ASL_MSG_DIVIDE_BY_ZERO ; 
 int /*<<< orphan*/  ASL_MSG_INVALID_EXPRESSION ; 
 int /*<<< orphan*/  AslGbl_CurrentField ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
#define  OP_EXP_ADD 147 
#define  OP_EXP_AND 146 
#define  OP_EXP_DIVIDE 145 
#define  OP_EXP_EQUAL 144 
#define  OP_EXP_GREATER 143 
#define  OP_EXP_GREATER_EQUAL 142 
#define  OP_EXP_LESS 141 
#define  OP_EXP_LESS_EQUAL 140 
#define  OP_EXP_LOGICAL_AND 139 
#define  OP_EXP_LOGICAL_NOT 138 
#define  OP_EXP_LOGICAL_OR 137 
#define  OP_EXP_MODULO 136 
#define  OP_EXP_MULTIPLY 135 
#define  OP_EXP_NOT_EQUAL 134 
#define  OP_EXP_ONES_COMPLIMENT 133 
#define  OP_EXP_OR 132 
#define  OP_EXP_SHIFT_LEFT 131 
#define  OP_EXP_SHIFT_RIGHT 130 
#define  OP_EXP_SUBTRACT 129 
#define  OP_EXP_XOR 128 

UINT64
FUNC5 (
    UINT64                  LeftValue,
    UINT32                  Operator,
    UINT64                  RightValue)
{
    UINT64                  Result;


    /* Perform the requested operation */

    switch (Operator)
    {
    case OP_EXP_ONES_COMPLIMENT:

        Result = ~RightValue;
        break;

    case OP_EXP_LOGICAL_NOT:

        Result = !RightValue;
        break;

    case OP_EXP_MULTIPLY:

        Result = LeftValue * RightValue;
        break;

    case OP_EXP_DIVIDE:

        if (!RightValue)
        {
            FUNC2 (ASL_ERROR, ASL_MSG_DIVIDE_BY_ZERO,
                AslGbl_CurrentField, NULL);
            return (0);
        }

        Result = LeftValue / RightValue;
        break;

    case OP_EXP_MODULO:

        if (!RightValue)
        {
            FUNC2 (ASL_ERROR, ASL_MSG_DIVIDE_BY_ZERO,
                AslGbl_CurrentField, NULL);
            return (0);
        }

        Result = LeftValue % RightValue;
        break;

    case OP_EXP_ADD:
        Result = LeftValue + RightValue;
        break;

    case OP_EXP_SUBTRACT:

        Result = LeftValue - RightValue;
        break;

    case OP_EXP_SHIFT_RIGHT:

        Result = LeftValue >> RightValue;
        break;

    case OP_EXP_SHIFT_LEFT:

        Result = LeftValue << RightValue;
        break;

    case OP_EXP_LESS:

        Result = LeftValue < RightValue;
        break;

    case OP_EXP_GREATER:

        Result = LeftValue > RightValue;
        break;

    case OP_EXP_LESS_EQUAL:

        Result = LeftValue <= RightValue;
        break;

    case OP_EXP_GREATER_EQUAL:

        Result = LeftValue >= RightValue;
        break;

    case OP_EXP_EQUAL:

        Result = LeftValue == RightValue;
        break;

    case OP_EXP_NOT_EQUAL:

        Result = LeftValue != RightValue;
        break;

    case OP_EXP_AND:

        Result = LeftValue & RightValue;
        break;

    case OP_EXP_XOR:

        Result = LeftValue ^ RightValue;
        break;

    case OP_EXP_OR:

        Result = LeftValue | RightValue;
        break;

    case OP_EXP_LOGICAL_AND:

        Result = LeftValue && RightValue;
        break;

    case OP_EXP_LOGICAL_OR:

        Result = LeftValue || RightValue;
        break;

   default:

        /* Unknown operator */

        FUNC3 (ASL_MSG_INVALID_EXPRESSION,
            AslGbl_CurrentField, NULL);
        return (0);
    }

    FUNC1 (ASL_DEBUG_OUTPUT,
        "IntegerEval: (%8.8X%8.8X %s %8.8X%8.8X) = %8.8X%8.8X\n",
        FUNC0 (LeftValue),
        FUNC4 (Operator),
        FUNC0 (RightValue),
        FUNC0 (Result));

    return (Result);
}