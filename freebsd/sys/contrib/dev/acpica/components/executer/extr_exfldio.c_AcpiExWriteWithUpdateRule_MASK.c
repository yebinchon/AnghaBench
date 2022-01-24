#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ UINT64 ;
typedef  int /*<<< orphan*/  UINT32 ;
struct TYPE_5__ {int FieldFlags; int AccessByteWidth; } ;
struct TYPE_6__ {TYPE_1__ CommonField; } ;
typedef  int /*<<< orphan*/  Mask ;
typedef  int /*<<< orphan*/  ACPI_STATUS ;
typedef  TYPE_2__ ACPI_OPERAND_OBJECT ;

/* Variables and functions */
 int /*<<< orphan*/  ACPI_DB_BFIELD ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC5 (int) ; 
 int /*<<< orphan*/  ACPI_READ ; 
 scalar_t__ ACPI_UINT64_MAX ; 
 int /*<<< orphan*/  ACPI_WRITE ; 
 int /*<<< orphan*/  AE_AML_OPERAND_VALUE ; 
 int /*<<< orphan*/  AE_INFO ; 
 int /*<<< orphan*/  AE_OK ; 
#define  AML_FIELD_UPDATE_PRESERVE 130 
 int AML_FIELD_UPDATE_RULE_MASK ; 
#define  AML_FIELD_UPDATE_WRITE_AS_ONES 129 
#define  AML_FIELD_UPDATE_WRITE_AS_ZEROS 128 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,int /*<<< orphan*/ ,scalar_t__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ExWriteWithUpdateRule ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

ACPI_STATUS
FUNC8 (
    ACPI_OPERAND_OBJECT     *ObjDesc,
    UINT64                  Mask,
    UINT64                  FieldValue,
    UINT32                  FieldDatumByteOffset)
{
    ACPI_STATUS             Status = AE_OK;
    UINT64                  MergedValue;
    UINT64                  CurrentValue;


    FUNC4 (ExWriteWithUpdateRule, Mask);


    /* Start with the new bits  */

    MergedValue = FieldValue;

    /* If the mask is all ones, we don't need to worry about the update rule */

    if (Mask != ACPI_UINT64_MAX)
    {
        /* Decode the update rule */

        switch (ObjDesc->CommonField.FieldFlags & AML_FIELD_UPDATE_RULE_MASK)
        {
        case AML_FIELD_UPDATE_PRESERVE:
            /*
             * Check if update rule needs to be applied (not if mask is all
             * ones)  The left shift drops the bits we want to ignore.
             */
            if ((~Mask << (FUNC5 (sizeof (Mask)) -
                   FUNC5 (ObjDesc->CommonField.AccessByteWidth))) != 0)
            {
                /*
                 * Read the current contents of the byte/word/dword containing
                 * the field, and merge with the new field value.
                 */
                Status = FUNC6 (
                    ObjDesc, FieldDatumByteOffset, &CurrentValue, ACPI_READ);
                if (FUNC2 (Status))
                {
                    FUNC7 (Status);
                }

                MergedValue |= (CurrentValue & ~Mask);
            }
            break;

        case AML_FIELD_UPDATE_WRITE_AS_ONES:

            /* Set positions outside the field to all ones */

            MergedValue |= ~Mask;
            break;

        case AML_FIELD_UPDATE_WRITE_AS_ZEROS:

            /* Set positions outside the field to all zeros */

            MergedValue &= Mask;
            break;

        default:

            FUNC1 ((AE_INFO,
                "Unknown UpdateRule value: 0x%X",
                (ObjDesc->CommonField.FieldFlags &
                    AML_FIELD_UPDATE_RULE_MASK)));
            FUNC7 (AE_AML_OPERAND_VALUE);
        }
    }

    FUNC0 ((ACPI_DB_BFIELD,
        "Mask %8.8X%8.8X, DatumOffset %X, Width %X, "
        "Value %8.8X%8.8X, MergedValue %8.8X%8.8X\n",
        FUNC3 (Mask),
        FieldDatumByteOffset,
        ObjDesc->CommonField.AccessByteWidth,
        FUNC3 (FieldValue),
        FUNC3 (MergedValue)));

    /* Write the merged value */

    Status = FUNC6 (
        ObjDesc, FieldDatumByteOffset, &MergedValue, ACPI_WRITE);

    FUNC7 (Status);
}