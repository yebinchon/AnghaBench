
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {TYPE_3__* Mutex; int SyncLevel; } ;
struct TYPE_7__ {int SyncLevel; int OsMutex; } ;
struct TYPE_9__ {TYPE_2__ Method; TYPE_1__ Mutex; } ;
typedef int ACPI_STATUS ;
typedef TYPE_3__ ACPI_OPERAND_OBJECT ;


 scalar_t__ ACPI_FAILURE (int ) ;
 int ACPI_FUNCTION_TRACE (int ) ;
 int ACPI_TYPE_MUTEX ;
 int AE_NO_MEMORY ;
 int AE_OK ;
 int AcpiOsCreateMutex (int *) ;
 TYPE_3__* AcpiUtCreateInternalObject (int ) ;
 int AcpiUtDeleteObjectDesc (TYPE_3__*) ;
 int DsCreateMethodMutex ;
 int return_ACPI_STATUS (int ) ;

__attribute__((used)) static ACPI_STATUS
AcpiDsCreateMethodMutex (
    ACPI_OPERAND_OBJECT *MethodDesc)
{
    ACPI_OPERAND_OBJECT *MutexDesc;
    ACPI_STATUS Status;


    ACPI_FUNCTION_TRACE (DsCreateMethodMutex);




    MutexDesc = AcpiUtCreateInternalObject (ACPI_TYPE_MUTEX);
    if (!MutexDesc)
    {
        return_ACPI_STATUS (AE_NO_MEMORY);
    }



    Status = AcpiOsCreateMutex (&MutexDesc->Mutex.OsMutex);
    if (ACPI_FAILURE (Status))
    {
        AcpiUtDeleteObjectDesc (MutexDesc);
        return_ACPI_STATUS (Status);
    }

    MutexDesc->Mutex.SyncLevel = MethodDesc->Method.SyncLevel;
    MethodDesc->Method.Mutex = MutexDesc;
    return_ACPI_STATUS (AE_OK);
}
