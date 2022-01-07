
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* WalkStateList; } ;
struct TYPE_5__ {struct TYPE_5__* Next; } ;
typedef TYPE_1__ ACPI_WALK_STATE ;
typedef TYPE_2__ ACPI_THREAD_STATE ;


 int ACPI_FUNCTION_TRACE (int ) ;
 int DsPushWalkState ;
 int return_VOID ;

void
AcpiDsPushWalkState (
    ACPI_WALK_STATE *WalkState,
    ACPI_THREAD_STATE *Thread)
{
    ACPI_FUNCTION_TRACE (DsPushWalkState);


    WalkState->Next = Thread->WalkStateList;
    Thread->WalkStateList = WalkState;

    return_VOID;
}
