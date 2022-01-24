#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {scalar_t__ LengthField; scalar_t__ TotalLength; scalar_t__ Child; } ;
typedef  TYPE_1__ DT_SUBTABLE ;

/* Variables and functions */
 TYPE_1__* AslGbl_RootTable ; 
 TYPE_1__* FUNC0 (TYPE_1__*,TYPE_1__*) ; 
 TYPE_1__* FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 

void
FUNC3 (
    void)
{
    DT_SUBTABLE             *ParentTable;
    DT_SUBTABLE             *ChildTable;


    ParentTable = AslGbl_RootTable;
    ChildTable = NULL;

    if (!ParentTable)
    {
        return;
    }

    FUNC2 (ParentTable);

    while (1)
    {
        ChildTable = FUNC0 (ParentTable, ChildTable);
        if (ChildTable)
        {
            if (ChildTable->LengthField)
            {
                FUNC2 (ChildTable);
            }

            if (ChildTable->Child)
            {
                ParentTable = ChildTable;
                ChildTable = NULL;
            }
            else
            {
                ParentTable->TotalLength += ChildTable->TotalLength;
                if (ParentTable->LengthField)
                {
                    FUNC2 (ParentTable);
                }
            }
        }
        else
        {
            ChildTable = ParentTable;

            if (ChildTable == AslGbl_RootTable)
            {
                break;
            }

            ParentTable = FUNC1 (ParentTable);

            ParentTable->TotalLength += ChildTable->TotalLength;
            if (ParentTable->LengthField)
            {
                FUNC2 (ParentTable);
            }
        }
    }
}