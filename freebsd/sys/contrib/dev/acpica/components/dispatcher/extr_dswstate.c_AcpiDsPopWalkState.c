
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {TYPE_1__* WalkStateList; } ;
struct TYPE_6__ {struct TYPE_6__* Next; } ;
typedef TYPE_1__ ACPI_WALK_STATE ;
typedef TYPE_2__ ACPI_THREAD_STATE ;


 int ACPI_FUNCTION_TRACE (int ) ;
 int DsPopWalkState ;
 int return_PTR (TYPE_1__*) ;

ACPI_WALK_STATE *
AcpiDsPopWalkState (
    ACPI_THREAD_STATE *Thread)
{
    ACPI_WALK_STATE *WalkState;


    ACPI_FUNCTION_TRACE (DsPopWalkState);


    WalkState = Thread->WalkStateList;

    if (WalkState)
    {


        Thread->WalkStateList = WalkState->Next;






    }

    return_PTR (WalkState);
}
