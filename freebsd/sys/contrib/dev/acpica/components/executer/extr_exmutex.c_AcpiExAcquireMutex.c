
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_6__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef int UINT16 ;
struct TYPE_16__ {scalar_t__ CurrentSyncLevel; int ThreadId; } ;
struct TYPE_13__ {scalar_t__ SyncLevel; int AcquisitionDepth; scalar_t__ OriginalSyncLevel; TYPE_6__* OwnerThread; int Node; } ;
struct TYPE_12__ {scalar_t__ Value; } ;
struct TYPE_15__ {TYPE_2__ Mutex; TYPE_1__ Integer; } ;
struct TYPE_14__ {TYPE_6__* Thread; } ;
typedef TYPE_3__ ACPI_WALK_STATE ;
typedef int ACPI_STATUS ;
typedef TYPE_4__ ACPI_OPERAND_OBJECT ;


 int ACPI_DB_EXEC ;
 int ACPI_DEBUG_PRINT (int ) ;
 int ACPI_ERROR (int ) ;
 int ACPI_FUNCTION_TRACE_PTR (int ,TYPE_4__*) ;
 scalar_t__ ACPI_SUCCESS (int ) ;
 int AE_AML_INTERNAL ;
 int AE_AML_MUTEX_ORDER ;
 int AE_BAD_PARAMETER ;
 int AE_INFO ;
 int AcpiExAcquireMutexObject (int ,TYPE_4__*,int ) ;
 int AcpiExLinkMutex (TYPE_4__*,TYPE_6__*) ;
 int AcpiUtGetNodeName (int ) ;
 int ExAcquireMutex ;
 int return_ACPI_STATUS (int ) ;

ACPI_STATUS
AcpiExAcquireMutex (
    ACPI_OPERAND_OBJECT *TimeDesc,
    ACPI_OPERAND_OBJECT *ObjDesc,
    ACPI_WALK_STATE *WalkState)
{
    ACPI_STATUS Status;


    ACPI_FUNCTION_TRACE_PTR (ExAcquireMutex, ObjDesc);


    if (!ObjDesc)
    {
        return_ACPI_STATUS (AE_BAD_PARAMETER);
    }



    if (!WalkState->Thread)
    {
        ACPI_ERROR ((AE_INFO,
            "Cannot acquire Mutex [%4.4s], null thread info",
            AcpiUtGetNodeName (ObjDesc->Mutex.Node)));
        return_ACPI_STATUS (AE_AML_INTERNAL);
    }





    if (WalkState->Thread->CurrentSyncLevel > ObjDesc->Mutex.SyncLevel)
    {
        ACPI_ERROR ((AE_INFO,
            "Cannot acquire Mutex [%4.4s], "
            "current SyncLevel is too large (%u)",
            AcpiUtGetNodeName (ObjDesc->Mutex.Node),
            WalkState->Thread->CurrentSyncLevel));
        return_ACPI_STATUS (AE_AML_MUTEX_ORDER);
    }

    ACPI_DEBUG_PRINT ((ACPI_DB_EXEC,
        "Acquiring: Mutex SyncLevel %u, Thread SyncLevel %u, "
        "Depth %u TID %p\n",
        ObjDesc->Mutex.SyncLevel, WalkState->Thread->CurrentSyncLevel,
        ObjDesc->Mutex.AcquisitionDepth, WalkState->Thread));

    Status = AcpiExAcquireMutexObject ((UINT16) TimeDesc->Integer.Value,
        ObjDesc, WalkState->Thread->ThreadId);

    if (ACPI_SUCCESS (Status) && ObjDesc->Mutex.AcquisitionDepth == 1)
    {


        ObjDesc->Mutex.OwnerThread = WalkState->Thread;
        ObjDesc->Mutex.OriginalSyncLevel =
            WalkState->Thread->CurrentSyncLevel;
        WalkState->Thread->CurrentSyncLevel =
            ObjDesc->Mutex.SyncLevel;



        AcpiExLinkMutex (ObjDesc, WalkState->Thread);
    }

    ACPI_DEBUG_PRINT ((ACPI_DB_EXEC,
        "Acquired: Mutex SyncLevel %u, Thread SyncLevel %u, Depth %u\n",
        ObjDesc->Mutex.SyncLevel, WalkState->Thread->CurrentSyncLevel,
        ObjDesc->Mutex.AcquisitionDepth));

    return_ACPI_STATUS (Status);
}
