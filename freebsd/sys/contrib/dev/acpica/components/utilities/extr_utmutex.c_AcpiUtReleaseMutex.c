
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t UINT32 ;
struct TYPE_2__ {scalar_t__ ThreadId; int Mutex; } ;
typedef int ACPI_STATUS ;
typedef size_t ACPI_MUTEX_HANDLE ;


 int ACPI_DB_MUTEX ;
 int ACPI_DEBUG_PRINT (int ) ;
 int ACPI_ERROR (int ) ;
 int ACPI_FUNCTION_NAME (int ) ;
 size_t ACPI_MAX_MUTEX ;
 scalar_t__ ACPI_MUTEX_NOT_ACQUIRED ;
 size_t ACPI_NUM_MUTEX ;
 int AE_BAD_PARAMETER ;
 int AE_INFO ;
 int AE_NOT_ACQUIRED ;
 int AE_OK ;
 int AE_RELEASE_DEADLOCK ;
 TYPE_1__* AcpiGbl_MutexInfo ;
 scalar_t__ AcpiOsGetThreadId () ;
 int AcpiOsReleaseMutex (int ) ;
 int AcpiUtGetMutexName (size_t) ;
 int UtReleaseMutex ;

ACPI_STATUS
AcpiUtReleaseMutex (
    ACPI_MUTEX_HANDLE MutexId)
{
    ACPI_FUNCTION_NAME (UtReleaseMutex);


    ACPI_DEBUG_PRINT ((ACPI_DB_MUTEX, "Thread %u releasing Mutex [%s]\n",
        (UINT32) AcpiOsGetThreadId (), AcpiUtGetMutexName (MutexId)));

    if (MutexId > ACPI_MAX_MUTEX)
    {
        return (AE_BAD_PARAMETER);
    }




    if (AcpiGbl_MutexInfo[MutexId].ThreadId == ACPI_MUTEX_NOT_ACQUIRED)
    {
        ACPI_ERROR ((AE_INFO,
            "Mutex [%s] (0x%X) is not acquired, cannot release",
            AcpiUtGetMutexName (MutexId), MutexId));

        return (AE_NOT_ACQUIRED);
    }
    AcpiGbl_MutexInfo[MutexId].ThreadId = ACPI_MUTEX_NOT_ACQUIRED;

    AcpiOsReleaseMutex (AcpiGbl_MutexInfo[MutexId].Mutex);
    return (AE_OK);
}
