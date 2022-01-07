
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int UINT32 ;
struct TYPE_4__ {struct TYPE_4__* Next; } ;
typedef int ACPI_STATUS ;
typedef size_t ACPI_SIZE ;


 int ACPI_ARRAY_LENGTH (TYPE_1__*) ;
 scalar_t__ ACPI_FAILURE (int ) ;
 int ACPI_WAIT_FOREVER ;
 int AE_OK ;
 TYPE_1__* AcpiDefaultSupportedInterfaces ;
 int AcpiGbl_OsiMutex ;
 TYPE_1__* AcpiGbl_SupportedInterfaces ;
 int AcpiOsAcquireMutex (int ,int ) ;
 int AcpiOsReleaseMutex (int ) ;

ACPI_STATUS
AcpiUtInitializeInterfaces (
    void)
{
    ACPI_STATUS Status;
    UINT32 i;


    Status = AcpiOsAcquireMutex (AcpiGbl_OsiMutex, ACPI_WAIT_FOREVER);
    if (ACPI_FAILURE (Status))
    {
        return (Status);
    }

    AcpiGbl_SupportedInterfaces = AcpiDefaultSupportedInterfaces;



    for (i = 0;
        i < (ACPI_ARRAY_LENGTH (AcpiDefaultSupportedInterfaces) - 1);
        i++)
    {
        AcpiDefaultSupportedInterfaces[i].Next =
            &AcpiDefaultSupportedInterfaces[(ACPI_SIZE) i + 1];
    }

    AcpiOsReleaseMutex (AcpiGbl_OsiMutex);
    return (AE_OK);
}
