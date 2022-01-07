
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t UINT32 ;
struct TYPE_2__ {scalar_t__ ThreadId; int UseCount; int Mutex; } ;
typedef scalar_t__ ACPI_THREAD_ID ;
typedef int ACPI_STATUS ;
typedef size_t ACPI_MUTEX_HANDLE ;


 int ACPI_DB_MUTEX ;
 int ACPI_DEBUG_PRINT (int ) ;
 int ACPI_ERROR (int ) ;
 int ACPI_EXCEPTION (int ) ;
 int ACPI_FUNCTION_NAME (int ) ;
 size_t ACPI_MAX_MUTEX ;
 size_t ACPI_NUM_MUTEX ;
 scalar_t__ ACPI_SUCCESS (int ) ;
 int ACPI_WAIT_FOREVER ;
 int AE_ACQUIRE_DEADLOCK ;
 int AE_ALREADY_ACQUIRED ;
 int AE_BAD_PARAMETER ;
 int AE_INFO ;
 TYPE_1__* AcpiGbl_MutexInfo ;
 int AcpiOsAcquireMutex (int ,int ) ;
 scalar_t__ AcpiOsGetThreadId () ;
 int AcpiUtGetMutexName (size_t) ;
 int UtAcquireMutex ;

ACPI_STATUS
AcpiUtAcquireMutex (
    ACPI_MUTEX_HANDLE MutexId)
{
    ACPI_STATUS Status;
    ACPI_THREAD_ID ThisThreadId;


    ACPI_FUNCTION_NAME (UtAcquireMutex);


    if (MutexId > ACPI_MAX_MUTEX)
    {
        return (AE_BAD_PARAMETER);
    }

    ThisThreadId = AcpiOsGetThreadId ();
    ACPI_DEBUG_PRINT ((ACPI_DB_MUTEX,
        "Thread %u attempting to acquire Mutex [%s]\n",
        (UINT32) ThisThreadId, AcpiUtGetMutexName (MutexId)));

    Status = AcpiOsAcquireMutex (
        AcpiGbl_MutexInfo[MutexId].Mutex, ACPI_WAIT_FOREVER);
    if (ACPI_SUCCESS (Status))
    {
        ACPI_DEBUG_PRINT ((ACPI_DB_MUTEX,
            "Thread %u acquired Mutex [%s]\n",
            (UINT32) ThisThreadId, AcpiUtGetMutexName (MutexId)));

        AcpiGbl_MutexInfo[MutexId].UseCount++;
        AcpiGbl_MutexInfo[MutexId].ThreadId = ThisThreadId;
    }
    else
    {
        ACPI_EXCEPTION ((AE_INFO, Status,
            "Thread %u could not acquire Mutex [%s] (0x%X)",
            (UINT32) ThisThreadId, AcpiUtGetMutexName (MutexId), MutexId));
    }

    return (Status);
}
