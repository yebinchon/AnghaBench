
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ UINT32 ;
typedef int ACPI_STATUS ;


 scalar_t__ ACPI_FAILURE (int ) ;
 int ACPI_FUNCTION_TRACE (int ) ;
 scalar_t__ ACPI_NUM_MUTEX ;
 int AcpiGbl_GpeLock ;
 int AcpiGbl_HardwareLock ;
 int AcpiGbl_NamespaceRwLock ;
 int AcpiGbl_OsiMutex ;
 int AcpiGbl_ReferenceCountLock ;
 int AcpiOsCreateLock (int *) ;
 int AcpiOsCreateMutex (int *) ;
 int AcpiUtCreateMutex (scalar_t__) ;
 int AcpiUtCreateRwLock (int *) ;
 int UtMutexInitialize ;
 int return_ACPI_STATUS (int ) ;

ACPI_STATUS
AcpiUtMutexInitialize (
    void)
{
    UINT32 i;
    ACPI_STATUS Status;


    ACPI_FUNCTION_TRACE (UtMutexInitialize);




    for (i = 0; i < ACPI_NUM_MUTEX; i++)
    {
        Status = AcpiUtCreateMutex (i);
        if (ACPI_FAILURE (Status))
        {
            return_ACPI_STATUS (Status);
        }
    }



    Status = AcpiOsCreateLock (&AcpiGbl_GpeLock);
    if (ACPI_FAILURE (Status))
    {
        return_ACPI_STATUS (Status);
    }

    Status = AcpiOsCreateLock (&AcpiGbl_HardwareLock);
    if (ACPI_FAILURE (Status))
    {
        return_ACPI_STATUS (Status);
    }

    Status = AcpiOsCreateLock (&AcpiGbl_ReferenceCountLock);
    if (ACPI_FAILURE (Status))
    {
        return_ACPI_STATUS (Status);
    }



    Status = AcpiOsCreateMutex (&AcpiGbl_OsiMutex);
    if (ACPI_FAILURE (Status))
    {
        return_ACPI_STATUS (Status);
    }



    Status = AcpiUtCreateRwLock (&AcpiGbl_NamespaceRwLock);
    if (ACPI_FAILURE (Status))
    {
        return_ACPI_STATUS (Status);
    }

    return_ACPI_STATUS (Status);
}
