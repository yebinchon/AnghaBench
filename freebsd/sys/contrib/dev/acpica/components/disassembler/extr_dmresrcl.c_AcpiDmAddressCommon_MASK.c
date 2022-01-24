#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int UINT8 ;
typedef  int /*<<< orphan*/  UINT32 ;
struct TYPE_4__ {int ResourceType; int SpecificFlags; int Flags; } ;
struct TYPE_5__ {TYPE_1__ Address; } ;
typedef  TYPE_2__ AML_RESOURCE ;

/* Variables and functions */
 size_t FUNC0 (int) ; 
 int ACPI_IO_RANGE ; 
 int ACPI_MEMORY_RANGE ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int,int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int* AcpiGbl_RngDecode ; 
 int* AcpiGbl_WordDecode ; 
 int /*<<< orphan*/  FUNC6 (char*,int) ; 

__attribute__((used)) static void
FUNC7 (
    AML_RESOURCE            *Resource,
    UINT8                   Type,
    UINT32                  Level)
{
    UINT8                   ResourceType;
    UINT8                   SpecificFlags;
    UINT8                   Flags;


    ResourceType = Resource->Address.ResourceType;
    SpecificFlags = Resource->Address.SpecificFlags;
    Flags = Resource->Address.Flags;

    FUNC2 (Level);

    /* Validate ResourceType */

    if ((ResourceType > 2) && (ResourceType < 0xC0))
    {
        FUNC6 (
            "/**** Invalid Resource Type: 0x%X ****/", ResourceType);
        return;
    }

    /* Prefix is either Word, DWord, QWord, or Extended */

    FUNC1 (Type);

    /* Resource Types above 0xC0 are vendor-defined */

    if (ResourceType > 2)
    {
        FUNC6 ("Space (0x%2.2X, ", ResourceType);
        FUNC5 (Flags);
        FUNC6 (" 0x%2.2X,", SpecificFlags);
        return;
    }

    /* This is either a Memory, IO, or BusNumber descriptor (0,1,2) */

    FUNC6 ("%s (",
        AcpiGbl_WordDecode [FUNC0 (ResourceType)]);

    /* Decode the general and type-specific flags */

    if (ResourceType == ACPI_MEMORY_RANGE)
    {
        FUNC4 (Flags, SpecificFlags);
    }
    else /* IO range or BusNumberRange */
    {
        FUNC3 (Flags);
        if (ResourceType == ACPI_IO_RANGE)
        {
            FUNC6 (" %s,",
                AcpiGbl_RngDecode [FUNC0 (SpecificFlags)]);
        }
    }
}