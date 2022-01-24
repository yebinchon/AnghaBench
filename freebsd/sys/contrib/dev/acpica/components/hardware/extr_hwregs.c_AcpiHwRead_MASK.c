#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int UINT8 ;
typedef  scalar_t__ UINT64 ;
typedef  int UINT32 ;
struct TYPE_5__ {int BitOffset; int BitWidth; scalar_t__ SpaceId; } ;
typedef  int /*<<< orphan*/  ACPI_STATUS ;
typedef  scalar_t__ ACPI_PHYSICAL_ADDRESS ;
typedef  scalar_t__ ACPI_IO_ADDRESS ;
typedef  TYPE_1__ ACPI_GENERIC_ADDRESS ;

/* Variables and functions */
 scalar_t__ ACPI_ADR_SPACE_SYSTEM_MEMORY ; 
 int /*<<< orphan*/  ACPI_DB_IO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__*,int,int /*<<< orphan*/ ,scalar_t__) ; 
 int FUNC7 (scalar_t__,TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__,int*,int) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,int,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__,scalar_t__*,int) ; 
 int /*<<< orphan*/  FUNC11 (scalar_t__) ; 
 int /*<<< orphan*/  HwRead ; 

ACPI_STATUS
FUNC12 (
    UINT64                  *Value,
    ACPI_GENERIC_ADDRESS    *Reg)
{
    UINT64                  Address;
    UINT8                   AccessWidth;
    UINT32                  BitWidth;
    UINT8                   BitOffset;
    UINT64                  Value64;
    UINT32                  Value32;
    UINT8                   Index;
    ACPI_STATUS             Status;


    FUNC4 (HwRead);


    /* Validate contents of the GAS register */

    Status = FUNC9 (Reg, 64, &Address);
    if (FUNC2 (Status))
    {
        return (Status);
    }

    /*
     * Initialize entire 64-bit return value to zero, convert AccessWidth
     * into number of bits based
     */
    *Value = 0;
    AccessWidth = FUNC7 (Address, Reg, 64);
    BitWidth = Reg->BitOffset + Reg->BitWidth;
    BitOffset = Reg->BitOffset;

    /*
     * Two address spaces supported: Memory or IO. PCI_Config is
     * not supported here because the GAS structure is insufficient
     */
    Index = 0;
    while (BitWidth)
    {
        if (BitOffset >= AccessWidth)
        {
            Value64 = 0;
            BitOffset -= AccessWidth;
        }
        else
        {
            if (Reg->SpaceId == ACPI_ADR_SPACE_SYSTEM_MEMORY)
            {
                Status = FUNC10 ((ACPI_PHYSICAL_ADDRESS)
                    Address + Index * FUNC1 (AccessWidth),
                    &Value64, AccessWidth);
            }
            else /* ACPI_ADR_SPACE_SYSTEM_IO, validated earlier */
            {
                Status = FUNC8 ((ACPI_IO_ADDRESS)
                    Address + Index * FUNC1 (AccessWidth),
                    &Value32, AccessWidth);
                Value64 = (UINT64) Value32;
            }
        }

        /*
         * Use offset style bit writes because "Index * AccessWidth" is
         * ensured to be less than 64-bits by AcpiHwValidateRegister().
         */
        FUNC6 (Value, Index * AccessWidth,
            FUNC5 (AccessWidth), Value64);

        BitWidth -= BitWidth > AccessWidth ? AccessWidth : BitWidth;
        Index++;
    }

    FUNC0 ((ACPI_DB_IO,
        "Read:  %8.8X%8.8X width %2d from %8.8X%8.8X (%s)\n",
        FUNC3 (*Value), AccessWidth,
        FUNC3 (Address), FUNC11 (Reg->SpaceId)));

    return (Status);
}