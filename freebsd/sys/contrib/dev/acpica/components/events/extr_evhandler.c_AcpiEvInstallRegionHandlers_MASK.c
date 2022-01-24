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
typedef  size_t UINT32 ;
typedef  int ACPI_STATUS ;

/* Variables and functions */
 int /*<<< orphan*/  ACPI_DEFAULT_HANDLER ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ACPI_MTX_NAMESPACE ; 
 size_t ACPI_NUM_DEFAULT_SPACES ; 
#define  AE_ALREADY_EXISTS 130 
#define  AE_OK 129 
#define  AE_SAME_HANDLER 128 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * AcpiGbl_DefaultAddressSpaces ; 
 int /*<<< orphan*/  AcpiGbl_RootNode ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  EvInstallRegionHandlers ; 
 int /*<<< orphan*/  FUNC5 (int) ; 

ACPI_STATUS
FUNC6 (
    void)
{
    ACPI_STATUS             Status;
    UINT32                  i;


    FUNC1 (EvInstallRegionHandlers);


    Status = FUNC3 (ACPI_MTX_NAMESPACE);
    if (FUNC0 (Status))
    {
        FUNC5 (Status);
    }

    /*
     * All address spaces (PCI Config, EC, SMBus) are scope dependent and
     * registration must occur for a specific device.
     *
     * In the case of the system memory and IO address spaces there is
     * currently no device associated with the address space. For these we
     * use the root.
     *
     * We install the default PCI config space handler at the root so that
     * this space is immediately available even though the we have not
     * enumerated all the PCI Root Buses yet. This is to conform to the ACPI
     * specification which states that the PCI config space must be always
     * available -- even though we are nowhere near ready to find the PCI root
     * buses at this point.
     *
     * NOTE: We ignore AE_ALREADY_EXISTS because this means that a handler
     * has already been installed (via AcpiInstallAddressSpaceHandler).
     * Similar for AE_SAME_HANDLER.
     */
    for (i = 0; i < ACPI_NUM_DEFAULT_SPACES; i++)
    {
        Status = FUNC2 (AcpiGbl_RootNode,
            AcpiGbl_DefaultAddressSpaces[i],
            ACPI_DEFAULT_HANDLER, NULL, NULL);
        switch (Status)
        {
        case AE_OK:
        case AE_SAME_HANDLER:
        case AE_ALREADY_EXISTS:

            /* These exceptions are all OK */

            Status = AE_OK;
            break;

        default:

            goto UnlockAndExit;
        }
    }

UnlockAndExit:
    (void) FUNC4 (ACPI_MTX_NAMESPACE);
    FUNC5 (Status);
}