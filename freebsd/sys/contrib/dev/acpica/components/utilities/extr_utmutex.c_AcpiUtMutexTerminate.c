
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ UINT32 ;


 int ACPI_FUNCTION_TRACE (int ) ;
 scalar_t__ ACPI_NUM_MUTEX ;
 int AcpiGbl_GpeLock ;
 int AcpiGbl_HardwareLock ;
 int AcpiGbl_NamespaceRwLock ;
 int AcpiGbl_OsiMutex ;
 int AcpiGbl_ReferenceCountLock ;
 int AcpiOsDeleteLock (int ) ;
 int AcpiOsDeleteMutex (int ) ;
 int AcpiUtDeleteMutex (scalar_t__) ;
 int AcpiUtDeleteRwLock (int *) ;
 int UtMutexTerminate ;
 int return_VOID ;

void
AcpiUtMutexTerminate (
    void)
{
    UINT32 i;


    ACPI_FUNCTION_TRACE (UtMutexTerminate);




    for (i = 0; i < ACPI_NUM_MUTEX; i++)
    {
        AcpiUtDeleteMutex (i);
    }

    AcpiOsDeleteMutex (AcpiGbl_OsiMutex);



    AcpiOsDeleteLock (AcpiGbl_GpeLock);
    AcpiOsDeleteLock (AcpiGbl_HardwareLock);
    AcpiOsDeleteLock (AcpiGbl_ReferenceCountLock);



    AcpiUtDeleteRwLock (&AcpiGbl_NamespaceRwLock);
    return_VOID;
}
