
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ACPI_WALK_STATE ;
typedef int ACPI_OPERAND_OBJECT ;


 int AcpiDbDisplayInternalObject (int *,int *) ;
 int AcpiGbl_CmSingleStep ;
 scalar_t__ AcpiGbl_DbThreadId ;
 scalar_t__ AcpiOsGetThreadId () ;
 int AcpiOsPrintf (char*) ;

void
AcpiDbDisplayArgumentObject (
    ACPI_OPERAND_OBJECT *ObjDesc,
    ACPI_WALK_STATE *WalkState)
{


    if (AcpiGbl_DbThreadId != AcpiOsGetThreadId())
    {
        return;
    }


    if (!AcpiGbl_CmSingleStep)
    {
        return;
    }

    AcpiOsPrintf ("ArgObj:    ");
    AcpiDbDisplayInternalObject (ObjDesc, WalkState);
}
