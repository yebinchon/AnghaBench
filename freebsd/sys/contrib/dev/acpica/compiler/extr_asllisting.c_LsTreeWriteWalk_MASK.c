#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  UINT32 ;
struct TYPE_8__ {int /*<<< orphan*/  String; } ;
struct TYPE_9__ {int ParseOpcode; int /*<<< orphan*/  CompileFlags; int /*<<< orphan*/  EndLogicalLine; int /*<<< orphan*/  LogicalLineNumber; int /*<<< orphan*/  EndLine; int /*<<< orphan*/  LineNumber; int /*<<< orphan*/  Filename; TYPE_1__ Value; } ;
struct TYPE_10__ {TYPE_2__ Asl; } ;
typedef  int /*<<< orphan*/  ACPI_STATUS ;
typedef  TYPE_3__ ACPI_PARSE_OBJECT ;

/* Variables and functions */
 int /*<<< orphan*/  AE_OK ; 
 int /*<<< orphan*/  ASL_PARSE_TREE_DEBUG1 ; 
 int /*<<< orphan*/  ASL_TREE_OUTPUT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
#define  PARSEOP_BYTECONST 143 
#define  PARSEOP_DWORDCONST 142 
#define  PARSEOP_EISAID 141 
#define  PARSEOP_INCLUDE 140 
#define  PARSEOP_INCLUDE_END 139 
#define  PARSEOP_INTEGER 138 
#define  PARSEOP_METHODCALL 137 
#define  PARSEOP_NAMESEG 136 
#define  PARSEOP_NAMESTRING 135 
#define  PARSEOP_ONE 134 
#define  PARSEOP_ONES 133 
#define  PARSEOP_PACKAGE_LENGTH 132 
#define  PARSEOP_QWORDCONST 131 
#define  PARSEOP_STRING_LITERAL 130 
#define  PARSEOP_WORDCONST 129 
#define  PARSEOP_ZERO 128 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static ACPI_STATUS
FUNC5 (
    ACPI_PARSE_OBJECT       *Op,
    UINT32                  Level,
    void                    *Context)
{

    /* Dump ParseOp name and possible value */

    switch (Op->Asl.ParseOpcode)
    {
        case PARSEOP_NAMESEG:
        case PARSEOP_NAMESTRING:
        case PARSEOP_METHODCALL:
        case PARSEOP_STRING_LITERAL:

        FUNC4 (Op, Level);
        break;

    case PARSEOP_BYTECONST:

        FUNC3 (Op, Level, 2);
        break;

    case PARSEOP_WORDCONST:
    case PARSEOP_PACKAGE_LENGTH:

        FUNC3 (Op, Level, 4);
        break;

    case PARSEOP_DWORDCONST:
    case PARSEOP_EISAID:

        FUNC3 (Op, Level, 8);
        break;

    case PARSEOP_QWORDCONST:
    case PARSEOP_INTEGER:
    case PARSEOP_ONE:
    case PARSEOP_ZERO:
    case PARSEOP_ONES:

        FUNC3 (Op, Level, 16);
        break;

    case PARSEOP_INCLUDE:

        FUNC0 (ASL_TREE_OUTPUT,
            "Open: %s\n", Op->Asl.Value.String);
        return (AE_OK);

    case PARSEOP_INCLUDE_END:

        FUNC0 (ASL_TREE_OUTPUT,
            "Close: %s\n", Op->Asl.Filename);
        return (AE_OK);

    default:

        FUNC2 (Op, Level);
        break;
    }

    /* Dump the remaining data */

    FUNC0 (ASL_TREE_OUTPUT, ASL_PARSE_TREE_DEBUG1,
        Op->Asl.ParseOpcode, Op->Asl.CompileFlags,
        Op->Asl.LineNumber, Op->Asl.EndLine,
        Op->Asl.LogicalLineNumber, Op->Asl.EndLogicalLine);

    FUNC1 (Op->Asl.CompileFlags, ASL_TREE_OUTPUT);
    FUNC0 (ASL_TREE_OUTPUT, "\n");
    return (AE_OK);
}