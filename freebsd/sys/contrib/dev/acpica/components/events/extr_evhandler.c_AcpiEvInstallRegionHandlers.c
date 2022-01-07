
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t UINT32 ;
typedef int ACPI_STATUS ;


 int ACPI_DEFAULT_HANDLER ;
 scalar_t__ ACPI_FAILURE (int) ;
 int ACPI_FUNCTION_TRACE (int ) ;
 int ACPI_MTX_NAMESPACE ;
 size_t ACPI_NUM_DEFAULT_SPACES ;



 int AcpiEvInstallSpaceHandler (int ,int ,int ,int *,int *) ;
 int * AcpiGbl_DefaultAddressSpaces ;
 int AcpiGbl_RootNode ;
 int AcpiUtAcquireMutex (int ) ;
 int AcpiUtReleaseMutex (int ) ;
 int EvInstallRegionHandlers ;
 int return_ACPI_STATUS (int) ;

ACPI_STATUS
AcpiEvInstallRegionHandlers (
    void)
{
    ACPI_STATUS Status;
    UINT32 i;


    ACPI_FUNCTION_TRACE (EvInstallRegionHandlers);


    Status = AcpiUtAcquireMutex (ACPI_MTX_NAMESPACE);
    if (ACPI_FAILURE (Status))
    {
        return_ACPI_STATUS (Status);
    }
    for (i = 0; i < ACPI_NUM_DEFAULT_SPACES; i++)
    {
        Status = AcpiEvInstallSpaceHandler (AcpiGbl_RootNode,
            AcpiGbl_DefaultAddressSpaces[i],
            ACPI_DEFAULT_HANDLER, ((void*)0), ((void*)0));
        switch (Status)
        {
        case 129:
        case 128:
        case 130:



            Status = 129;
            break;

        default:

            goto UnlockAndExit;
        }
    }

UnlockAndExit:
    (void) AcpiUtReleaseMutex (ACPI_MTX_NAMESPACE);
    return_ACPI_STATUS (Status);
}
