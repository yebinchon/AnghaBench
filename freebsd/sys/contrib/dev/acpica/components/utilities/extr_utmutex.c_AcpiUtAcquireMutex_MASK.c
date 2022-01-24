#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  size_t UINT32 ;
struct TYPE_2__ {scalar_t__ ThreadId; int /*<<< orphan*/  UseCount; int /*<<< orphan*/  Mutex; } ;
typedef  scalar_t__ ACPI_THREAD_ID ;
typedef  int /*<<< orphan*/  ACPI_STATUS ;
typedef  size_t ACPI_MUTEX_HANDLE ;

/* Variables and functions */
 int /*<<< orphan*/  ACPI_DB_MUTEX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 size_t ACPI_MAX_MUTEX ; 
 size_t ACPI_NUM_MUTEX ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ACPI_WAIT_FOREVER ; 
 int /*<<< orphan*/  AE_ACQUIRE_DEADLOCK ; 
 int /*<<< orphan*/  AE_ALREADY_ACQUIRED ; 
 int /*<<< orphan*/  AE_BAD_PARAMETER ; 
 int /*<<< orphan*/  AE_INFO ; 
 TYPE_1__* AcpiGbl_MutexInfo ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (size_t) ; 
 int /*<<< orphan*/  UtAcquireMutex ; 

ACPI_STATUS
FUNC8 (
    ACPI_MUTEX_HANDLE       MutexId)
{
    ACPI_STATUS             Status;
    ACPI_THREAD_ID          ThisThreadId;


    FUNC3 (UtAcquireMutex);


    if (MutexId > ACPI_MAX_MUTEX)
    {
        return (AE_BAD_PARAMETER);
    }

    ThisThreadId = FUNC6 ();

#ifdef ACPI_MUTEX_DEBUG
    {
        UINT32                  i;
        /*
         * Mutex debug code, for internal debugging only.
         *
         * Deadlock prevention. Check if this thread owns any mutexes of value
         * greater than or equal to this one. If so, the thread has violated
         * the mutex ordering rule. This indicates a coding error somewhere in
         * the ACPI subsystem code.
         */
        for (i = MutexId; i < ACPI_NUM_MUTEX; i++)
        {
            if (AcpiGbl_MutexInfo[i].ThreadId == ThisThreadId)
            {
                if (i == MutexId)
                {
                    ACPI_ERROR ((AE_INFO,
                        "Mutex [%s] already acquired by this thread [%u]",
                        AcpiUtGetMutexName (MutexId),
                        (UINT32) ThisThreadId));

                    return (AE_ALREADY_ACQUIRED);
                }

                ACPI_ERROR ((AE_INFO,
                    "Invalid acquire order: Thread %u owns [%s], wants [%s]",
                    (UINT32) ThisThreadId, AcpiUtGetMutexName (i),
                    AcpiUtGetMutexName (MutexId)));

                return (AE_ACQUIRE_DEADLOCK);
            }
        }
    }
#endif

    FUNC0 ((ACPI_DB_MUTEX,
        "Thread %u attempting to acquire Mutex [%s]\n",
        (UINT32) ThisThreadId, FUNC7 (MutexId)));

    Status = FUNC5 (
        AcpiGbl_MutexInfo[MutexId].Mutex, ACPI_WAIT_FOREVER);
    if (FUNC4 (Status))
    {
        FUNC0 ((ACPI_DB_MUTEX,
            "Thread %u acquired Mutex [%s]\n",
            (UINT32) ThisThreadId, FUNC7 (MutexId)));

        AcpiGbl_MutexInfo[MutexId].UseCount++;
        AcpiGbl_MutexInfo[MutexId].ThreadId = ThisThreadId;
    }
    else
    {
        FUNC2 ((AE_INFO, Status,
            "Thread %u could not acquire Mutex [%s] (0x%X)",
            (UINT32) ThisThreadId, FUNC7 (MutexId), MutexId));
    }

    return (Status);
}