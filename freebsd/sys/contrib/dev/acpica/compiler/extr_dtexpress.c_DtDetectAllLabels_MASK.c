#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  UINT32 ;
struct TYPE_9__ {scalar_t__ Opcode; } ;
struct TYPE_8__ {struct TYPE_8__* Next; int /*<<< orphan*/  TableOffset; int /*<<< orphan*/  Name; } ;
typedef  TYPE_1__ DT_FIELD ;
typedef  TYPE_2__ ACPI_DMTABLE_INFO ;

/* Variables and functions */
 scalar_t__ ACPI_DMT_LABEL ; 
 int /*<<< orphan*/  AslGbl_CurrentTableOffset ; 
 scalar_t__ FUNC0 (TYPE_1__*,TYPE_2__*) ; 
 TYPE_2__* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 

void
FUNC3 (
    DT_FIELD                *FieldList)
{
    ACPI_DMTABLE_INFO       *Info;
    DT_FIELD                *GenericField;
    UINT32                  TableOffset;


    TableOffset = AslGbl_CurrentTableOffset;
    GenericField = FieldList;

    /*
     * Process all "Label:" fields within the parse tree. We need
     * to know the offsets for all labels before we can compile
     * the parse tree in order to handle forward references. Traverse
     * tree and get/set all field lengths of all operators in order to
     * determine the label offsets.
     */
    while (GenericField)
    {
        Info = FUNC1 (GenericField->Name);
        if (Info)
        {
            /* Maintain table offsets */

            GenericField->TableOffset = TableOffset;
            TableOffset += FUNC0 (GenericField, Info);

            /* Insert all labels in the global label list */

            if (Info->Opcode == ACPI_DMT_LABEL)
            {
                FUNC2 (GenericField);
            }
        }

        GenericField = GenericField->Next;
    }
}