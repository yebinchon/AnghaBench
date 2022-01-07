
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_6__ ;
typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_15__ {scalar_t__ ThreadCount; int InfoFlags; scalar_t__ SyncLevel; TYPE_3__* Mutex; int OwnerId; } ;
struct TYPE_17__ {TYPE_4__ Method; } ;
struct TYPE_16__ {TYPE_1__* Thread; } ;
struct TYPE_13__ {scalar_t__ SyncLevel; scalar_t__ ThreadId; scalar_t__ OriginalSyncLevel; int OsMutex; int AcquisitionDepth; } ;
struct TYPE_14__ {TYPE_2__ Mutex; } ;
struct TYPE_12__ {scalar_t__ CurrentSyncLevel; scalar_t__ ThreadId; } ;
typedef TYPE_5__ ACPI_WALK_STATE ;
typedef int ACPI_STATUS ;
typedef TYPE_6__ ACPI_OPERAND_OBJECT ;
typedef int ACPI_NAMESPACE_NODE ;


 int ACPI_ERROR (int ) ;
 scalar_t__ ACPI_FAILURE (int ) ;
 int ACPI_FUNCTION_TRACE_PTR (int ,int *) ;
 int ACPI_METHOD_IGNORE_SYNC_LEVEL ;
 int ACPI_METHOD_SERIALIZED ;
 scalar_t__ ACPI_UINT8_MAX ;
 int ACPI_WAIT_FOREVER ;
 int AE_AML_METHOD_LIMIT ;
 int AE_AML_MUTEX_ORDER ;
 int AE_INFO ;
 int AE_NULL_ENTRY ;
 int AE_OK ;
 int AcpiDsCreateMethodMutex (TYPE_6__*) ;
 int AcpiExStartTraceMethod (int *,TYPE_6__*,TYPE_5__*) ;
 int AcpiExSystemWaitMutex (int ,int ) ;
 int AcpiMethodCount ;
 scalar_t__ AcpiOsGetThreadId () ;
 int AcpiOsReleaseMutex (int ) ;
 int AcpiUtAllocateOwnerId (int *) ;
 int AcpiUtGetNodeName (int *) ;
 int DsBeginMethodExecution ;
 int return_ACPI_STATUS (int ) ;

ACPI_STATUS
AcpiDsBeginMethodExecution (
    ACPI_NAMESPACE_NODE *MethodNode,
    ACPI_OPERAND_OBJECT *ObjDesc,
    ACPI_WALK_STATE *WalkState)
{
    ACPI_STATUS Status = AE_OK;


    ACPI_FUNCTION_TRACE_PTR (DsBeginMethodExecution, MethodNode);


    if (!MethodNode)
    {
        return_ACPI_STATUS (AE_NULL_ENTRY);
    }

    AcpiExStartTraceMethod (MethodNode, ObjDesc, WalkState);



    if (ObjDesc->Method.ThreadCount == ACPI_UINT8_MAX)
    {
        ACPI_ERROR ((AE_INFO,
            "Method reached maximum reentrancy limit (255)"));
        return_ACPI_STATUS (AE_AML_METHOD_LIMIT);
    }




    if (ObjDesc->Method.InfoFlags & ACPI_METHOD_SERIALIZED)
    {





        if (!ObjDesc->Method.Mutex)
        {
            Status = AcpiDsCreateMethodMutex (ObjDesc);
            if (ACPI_FAILURE (Status))
            {
                return_ACPI_STATUS (Status);
            }
        }
        if (WalkState &&
            (!(ObjDesc->Method.InfoFlags & ACPI_METHOD_IGNORE_SYNC_LEVEL)) &&
            (WalkState->Thread->CurrentSyncLevel >
                ObjDesc->Method.Mutex->Mutex.SyncLevel))
        {
            ACPI_ERROR ((AE_INFO,
                "Cannot acquire Mutex for method [%4.4s]"
                ", current SyncLevel is too large (%u)",
                AcpiUtGetNodeName (MethodNode),
                WalkState->Thread->CurrentSyncLevel));

            return_ACPI_STATUS (AE_AML_MUTEX_ORDER);
        }





        if (!WalkState ||
            !ObjDesc->Method.Mutex->Mutex.ThreadId ||
            (WalkState->Thread->ThreadId !=
                ObjDesc->Method.Mutex->Mutex.ThreadId))
        {




            Status = AcpiExSystemWaitMutex (
                ObjDesc->Method.Mutex->Mutex.OsMutex, ACPI_WAIT_FOREVER);
            if (ACPI_FAILURE (Status))
            {
                return_ACPI_STATUS (Status);
            }



            if (WalkState)
            {
                ObjDesc->Method.Mutex->Mutex.OriginalSyncLevel =
                    WalkState->Thread->CurrentSyncLevel;

                ObjDesc->Method.Mutex->Mutex.ThreadId =
                    WalkState->Thread->ThreadId;
                if (!(ObjDesc->Method.InfoFlags &
                    ACPI_METHOD_IGNORE_SYNC_LEVEL))
                {
                    WalkState->Thread->CurrentSyncLevel =
                        ObjDesc->Method.SyncLevel;
                }
            }
            else
            {
                ObjDesc->Method.Mutex->Mutex.OriginalSyncLevel =
                    ObjDesc->Method.Mutex->Mutex.SyncLevel;

                ObjDesc->Method.Mutex->Mutex.ThreadId =
                    AcpiOsGetThreadId ();
            }
        }



        ObjDesc->Method.Mutex->Mutex.AcquisitionDepth++;
    }






    if (!ObjDesc->Method.OwnerId)
    {
        Status = AcpiUtAllocateOwnerId (&ObjDesc->Method.OwnerId);
        if (ACPI_FAILURE (Status))
        {
            goto Cleanup;
        }
    }





    ObjDesc->Method.ThreadCount++;
    AcpiMethodCount++;
    return_ACPI_STATUS (Status);


Cleanup:


    if (ObjDesc->Method.Mutex)
    {
        AcpiOsReleaseMutex (ObjDesc->Method.Mutex->Mutex.OsMutex);
    }
    return_ACPI_STATUS (Status);
}
