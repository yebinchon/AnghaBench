
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ACPI_WALK_STATE ;


 int AcpiDbDecodeLocals (int *) ;
 int * AcpiDsGetCurrentWalkState (int ) ;
 int AcpiGbl_CurrentWalkList ;
 int AcpiOsPrintf (char*) ;

void
AcpiDbDisplayLocals (
    void)
{
    ACPI_WALK_STATE *WalkState;


    WalkState = AcpiDsGetCurrentWalkState (AcpiGbl_CurrentWalkList);
    if (!WalkState)
    {
        AcpiOsPrintf ("There is no method currently executing\n");
        return;
    }

    AcpiDbDecodeLocals (WalkState);
}
