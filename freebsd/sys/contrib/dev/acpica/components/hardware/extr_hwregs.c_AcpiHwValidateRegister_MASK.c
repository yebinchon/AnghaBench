#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ UINT8 ;
typedef  int /*<<< orphan*/  UINT64 ;
struct TYPE_4__ {scalar_t__ SpaceId; int AccessWidth; scalar_t__ BitWidth; scalar_t__ BitOffset; int /*<<< orphan*/  Address; } ;
typedef  int /*<<< orphan*/  ACPI_STATUS ;
typedef  TYPE_1__ ACPI_GENERIC_ADDRESS ;

/* Variables and functions */
 scalar_t__ ACPI_ADR_SPACE_SYSTEM_IO ; 
 scalar_t__ ACPI_ADR_SPACE_SYSTEM_MEMORY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AE_BAD_ADDRESS ; 
 int /*<<< orphan*/  AE_BAD_PARAMETER ; 
 int /*<<< orphan*/  AE_INFO ; 
 int /*<<< orphan*/  AE_OK ; 
 int /*<<< orphan*/  AE_SUPPORT ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,TYPE_1__*,scalar_t__) ; 

ACPI_STATUS
FUNC5 (
    ACPI_GENERIC_ADDRESS    *Reg,
    UINT8                   MaxBitWidth,
    UINT64                  *Address)
{
    UINT8                   BitWidth;
    UINT8                   AccessWidth;


    /* Must have a valid pointer to a GAS structure */

    if (!Reg)
    {
        return (AE_BAD_PARAMETER);
    }

    /*
     * Copy the target address. This handles possible alignment issues.
     * Address must not be null. A null address also indicates an optional
     * ACPI register that is not supported, so no error message.
     */
    FUNC1 (Address, &Reg->Address);
    if (!(*Address))
    {
        return (AE_BAD_ADDRESS);
    }

    /* Validate the SpaceID */

    if ((Reg->SpaceId != ACPI_ADR_SPACE_SYSTEM_MEMORY) &&
        (Reg->SpaceId != ACPI_ADR_SPACE_SYSTEM_IO))
    {
        FUNC0 ((AE_INFO,
            "Unsupported address space: 0x%X", Reg->SpaceId));
        return (AE_SUPPORT);
    }

    /* Validate the AccessWidth */

    if (Reg->AccessWidth > 4)
    {
        FUNC0 ((AE_INFO,
            "Unsupported register access width: 0x%X", Reg->AccessWidth));
        return (AE_SUPPORT);
    }

    /* Validate the BitWidth, convert AccessWidth into number of bits */

    AccessWidth = FUNC4 (*Address, Reg, MaxBitWidth);
    BitWidth = FUNC2 (Reg->BitOffset + Reg->BitWidth, AccessWidth);
    if (MaxBitWidth < BitWidth)
    {
        FUNC3 ((AE_INFO,
            "Requested bit width 0x%X is smaller than register bit width 0x%X",
            MaxBitWidth, BitWidth));
        return (AE_SUPPORT);
    }

    return (AE_OK);
}