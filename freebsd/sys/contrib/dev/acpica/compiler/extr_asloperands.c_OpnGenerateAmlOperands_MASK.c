#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
struct TYPE_15__ {scalar_t__ AmlOpcode; int ParseOpcode; } ;
struct TYPE_16__ {TYPE_1__ Asl; } ;
typedef  TYPE_2__ ACPI_PARSE_OBJECT ;

/* Variables and functions */
 scalar_t__ AML_RAW_DATA_BYTE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*) ; 
#define  PARSEOP_BANKFIELD 141 
#define  PARSEOP_BUFFER 140 
#define  PARSEOP_DEFINITION_BLOCK 139 
#define  PARSEOP_FIELD 138 
#define  PARSEOP_INDEXFIELD 137 
#define  PARSEOP_LOADTABLE 136 
#define  PARSEOP_METHOD 135 
#define  PARSEOP_METHODCALL 134 
#define  PARSEOP_MUTEX 133 
#define  PARSEOP_NAMESEG 132 
#define  PARSEOP_NAMESTRING 131 
#define  PARSEOP_OPERATIONREGION 130 
#define  PARSEOP_RESOURCETEMPLATE 129 
#define  PARSEOP_STRING_LITERAL 128 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*) ; 

void
FUNC11 (
    ACPI_PARSE_OBJECT       *Op)
{


    if (Op->Asl.AmlOpcode == AML_RAW_DATA_BYTE)
    {
        return;
    }

    switch (Op->Asl.ParseOpcode)
    {
    case PARSEOP_DEFINITION_BLOCK:

        FUNC3 (Op);
        break;

    case PARSEOP_METHOD:

        FUNC7 (Op);
        break;

    case PARSEOP_MUTEX:

        FUNC8 (Op);
        break;

    case PARSEOP_FIELD:

        FUNC4 (Op);
        break;

    case PARSEOP_INDEXFIELD:

        FUNC5 (Op);
        break;

    case PARSEOP_BANKFIELD:

        FUNC1 (Op);
        break;

    case PARSEOP_BUFFER:

        FUNC2 (Op);
        break;

    case PARSEOP_LOADTABLE:

        FUNC6 (Op);
        break;

    case PARSEOP_OPERATIONREGION:

        FUNC9 (Op);
        break;

    case PARSEOP_RESOURCETEMPLATE:

        FUNC10 (Op);
        break;

    case PARSEOP_NAMESEG:
    case PARSEOP_NAMESTRING:
    case PARSEOP_METHODCALL:
    case PARSEOP_STRING_LITERAL:
    default:

        break;
    }

    /* TBD: move */

    FUNC0 (Op);
}