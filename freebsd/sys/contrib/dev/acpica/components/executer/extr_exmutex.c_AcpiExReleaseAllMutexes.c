
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_10__ {scalar_t__ ThreadId; int * OwnerThread; scalar_t__ AcquisitionDepth; TYPE_5__* Next; int * Prev; int OriginalSyncLevel; int OsMutex; int SyncLevel; TYPE_2__* Node; } ;
struct TYPE_12__ {TYPE_3__ Mutex; } ;
struct TYPE_11__ {int CurrentSyncLevel; TYPE_5__* AcquiredMutexList; } ;
struct TYPE_8__ {int Ascii; } ;
struct TYPE_9__ {TYPE_1__ Name; } ;
typedef TYPE_4__ ACPI_THREAD_STATE ;
typedef TYPE_5__ ACPI_OPERAND_OBJECT ;


 int ACPI_DB_EXEC ;
 int ACPI_DEBUG_PRINT (int ) ;
 int ACPI_FUNCTION_TRACE (int ) ;
 int AcpiEvReleaseGlobalLock () ;
 TYPE_5__* AcpiGbl_GlobalLockMutex ;
 int AcpiOsReleaseMutex (int ) ;
 int ExReleaseAllMutexes ;
 int return_VOID ;

void
AcpiExReleaseAllMutexes (
    ACPI_THREAD_STATE *Thread)
{
    ACPI_OPERAND_OBJECT *Next = Thread->AcquiredMutexList;
    ACPI_OPERAND_OBJECT *ObjDesc;


    ACPI_FUNCTION_TRACE (ExReleaseAllMutexes);




    while (Next)
    {
        ObjDesc = Next;
        ACPI_DEBUG_PRINT ((ACPI_DB_EXEC,
            "Mutex [%4.4s] force-release, SyncLevel %u Depth %u\n",
            ObjDesc->Mutex.Node->Name.Ascii, ObjDesc->Mutex.SyncLevel,
            ObjDesc->Mutex.AcquisitionDepth));



        if (ObjDesc == AcpiGbl_GlobalLockMutex)
        {


            (void) AcpiEvReleaseGlobalLock ();
        }
        else
        {
            AcpiOsReleaseMutex (ObjDesc->Mutex.OsMutex);
        }



        Thread->CurrentSyncLevel = ObjDesc->Mutex.OriginalSyncLevel;



        Next = ObjDesc->Mutex.Next;

        ObjDesc->Mutex.Prev = ((void*)0);
        ObjDesc->Mutex.Next = ((void*)0);
        ObjDesc->Mutex.AcquisitionDepth = 0;
        ObjDesc->Mutex.OwnerThread = ((void*)0);
        ObjDesc->Mutex.ThreadId = 0;
    }

    return_VOID;
}
