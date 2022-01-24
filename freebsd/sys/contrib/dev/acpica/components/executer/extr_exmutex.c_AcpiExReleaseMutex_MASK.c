#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_7__ ;
typedef  struct TYPE_17__   TYPE_6__ ;
typedef  struct TYPE_16__   TYPE_5__ ;
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ UINT8 ;
typedef  int /*<<< orphan*/  UINT32 ;
struct TYPE_15__ {scalar_t__ SyncLevel; int /*<<< orphan*/  AcquisitionDepth; int /*<<< orphan*/  Node; TYPE_6__* OwnerThread; } ;
struct TYPE_18__ {TYPE_4__ Mutex; } ;
struct TYPE_17__ {scalar_t__ ThreadId; scalar_t__ CurrentSyncLevel; TYPE_2__* AcquiredMutexList; } ;
struct TYPE_16__ {TYPE_3__* Thread; } ;
struct TYPE_14__ {scalar_t__ ThreadId; int /*<<< orphan*/  CurrentSyncLevel; } ;
struct TYPE_12__ {scalar_t__ OriginalSyncLevel; } ;
struct TYPE_13__ {TYPE_1__ Mutex; } ;
typedef  TYPE_5__ ACPI_WALK_STATE ;
typedef  TYPE_6__ ACPI_THREAD_STATE ;
typedef  int /*<<< orphan*/  ACPI_STATUS ;
typedef  TYPE_7__ ACPI_OPERAND_OBJECT ;

/* Variables and functions */
 int /*<<< orphan*/  ACPI_DB_EXEC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AE_AML_INTERNAL ; 
 int /*<<< orphan*/  AE_AML_MUTEX_NOT_ACQUIRED ; 
 int /*<<< orphan*/  AE_AML_MUTEX_ORDER ; 
 int /*<<< orphan*/  AE_AML_NOT_OWNER ; 
 int /*<<< orphan*/  AE_BAD_PARAMETER ; 
 int /*<<< orphan*/  AE_INFO ; 
 int /*<<< orphan*/  AE_OK ; 
 int /*<<< orphan*/  FUNC4 (TYPE_7__*) ; 
 TYPE_7__* AcpiGbl_GlobalLockMutex ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ExReleaseMutex ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

ACPI_STATUS
FUNC7 (
    ACPI_OPERAND_OBJECT     *ObjDesc,
    ACPI_WALK_STATE         *WalkState)
{
    UINT8                   PreviousSyncLevel;
    ACPI_THREAD_STATE       *OwnerThread;
    ACPI_STATUS             Status = AE_OK;


    FUNC3 (ExReleaseMutex);


    if (!ObjDesc)
    {
        FUNC6 (AE_BAD_PARAMETER);
    }

    OwnerThread = ObjDesc->Mutex.OwnerThread;

    /* The mutex must have been previously acquired in order to release it */

    if (!OwnerThread)
    {
        FUNC1 ((AE_INFO,
            "Cannot release Mutex [%4.4s], not acquired",
            FUNC5 (ObjDesc->Mutex.Node)));
        FUNC6 (AE_AML_MUTEX_NOT_ACQUIRED);
    }

    /* Must have a valid thread ID */

    if (!WalkState->Thread)
    {
        FUNC1 ((AE_INFO,
            "Cannot release Mutex [%4.4s], null thread info",
            FUNC5 (ObjDesc->Mutex.Node)));
        FUNC6 (AE_AML_INTERNAL);
    }

    /*
     * The Mutex is owned, but this thread must be the owner.
     * Special case for Global Lock, any thread can release
     */
    if ((OwnerThread->ThreadId != WalkState->Thread->ThreadId) &&
        (ObjDesc != AcpiGbl_GlobalLockMutex))
    {
        FUNC1 ((AE_INFO,
            "Thread %u cannot release Mutex [%4.4s] acquired by thread %u",
            (UINT32) WalkState->Thread->ThreadId,
            FUNC5 (ObjDesc->Mutex.Node),
            (UINT32) OwnerThread->ThreadId));
        FUNC6 (AE_AML_NOT_OWNER);
    }

    /*
     * The sync level of the mutex must be equal to the current sync level. In
     * other words, the current level means that at least one mutex at that
     * level is currently being held. Attempting to release a mutex of a
     * different level can only mean that the mutex ordering rule is being
     * violated. This behavior is clarified in ACPI 4.0 specification.
     */
    if (ObjDesc->Mutex.SyncLevel != OwnerThread->CurrentSyncLevel)
    {
        FUNC1 ((AE_INFO,
            "Cannot release Mutex [%4.4s], SyncLevel mismatch: "
            "mutex %u current %u",
            FUNC5 (ObjDesc->Mutex.Node),
            ObjDesc->Mutex.SyncLevel, WalkState->Thread->CurrentSyncLevel));
        FUNC6 (AE_AML_MUTEX_ORDER);
    }

    /*
     * Get the previous SyncLevel from the head of the acquired mutex list.
     * This handles the case where several mutexes at the same level have been
     * acquired, but are not released in reverse order.
     */
    PreviousSyncLevel =
        OwnerThread->AcquiredMutexList->Mutex.OriginalSyncLevel;

    FUNC0 ((ACPI_DB_EXEC,
        "Releasing: Object SyncLevel %u, Thread SyncLevel %u, "
        "Prev SyncLevel %u, Depth %u TID %p\n",
        ObjDesc->Mutex.SyncLevel, WalkState->Thread->CurrentSyncLevel,
        PreviousSyncLevel, ObjDesc->Mutex.AcquisitionDepth,
        WalkState->Thread));

    Status = FUNC4 (ObjDesc);
    if (FUNC2 (Status))
    {
        FUNC6 (Status);
    }

    if (ObjDesc->Mutex.AcquisitionDepth == 0)
    {
        /* Restore the previous SyncLevel */

        OwnerThread->CurrentSyncLevel = PreviousSyncLevel;
    }

    FUNC0 ((ACPI_DB_EXEC,
        "Released: Object SyncLevel %u, Thread SyncLevel, %u, "
        "Prev SyncLevel %u, Depth %u\n",
        ObjDesc->Mutex.SyncLevel, WalkState->Thread->CurrentSyncLevel,
        PreviousSyncLevel, ObjDesc->Mutex.AcquisitionDepth));

    FUNC6 (Status);
}