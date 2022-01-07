
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int * AmlStart; } ;
struct TYPE_6__ {TYPE_1__ Method; } ;
typedef scalar_t__ BOOLEAN ;
typedef int ACPI_WALK_STATE ;
typedef TYPE_2__ ACPI_OPERAND_OBJECT ;
typedef int ACPI_NAMESPACE_NODE ;


 int ACPI_FREE (char*) ;
 int ACPI_FUNCTION_NAME (int ) ;
 int ACPI_TRACE_AML_METHOD ;
 int ACPI_TRACE_ONESHOT ;
 int ACPI_TRACE_POINT (int ,int ,int *,char*) ;
 int AcpiDbgLayer ;
 int AcpiDbgLevel ;
 scalar_t__ AcpiExInterpreterTraceEnabled (int *) ;
 int AcpiGbl_OriginalDbgLayer ;
 int AcpiGbl_OriginalDbgLevel ;
 int AcpiGbl_TraceFlags ;
 int * AcpiGbl_TraceMethodName ;
 TYPE_2__* AcpiGbl_TraceMethodObject ;
 char* AcpiNsGetNormalizedPathname (int *,int ) ;
 int ExStopTraceMethod ;
 int FALSE ;
 int TRUE ;

void
AcpiExStopTraceMethod (
    ACPI_NAMESPACE_NODE *MethodNode,
    ACPI_OPERAND_OBJECT *ObjDesc,
    ACPI_WALK_STATE *WalkState)
{
    char *Pathname = ((void*)0);
    BOOLEAN Enabled;


    ACPI_FUNCTION_NAME (ExStopTraceMethod);


    if (MethodNode)
    {
        Pathname = AcpiNsGetNormalizedPathname (MethodNode, TRUE);
    }

    Enabled = AcpiExInterpreterTraceEnabled (((void*)0));

    if (Enabled)
    {
        ACPI_TRACE_POINT (ACPI_TRACE_AML_METHOD, FALSE,
            ObjDesc ? ObjDesc->Method.AmlStart : ((void*)0), Pathname);
    }



    if (AcpiGbl_TraceMethodObject == ObjDesc)
    {


        if (AcpiGbl_TraceFlags & ACPI_TRACE_ONESHOT)
        {
            AcpiGbl_TraceMethodName = ((void*)0);
        }

        AcpiDbgLevel = AcpiGbl_OriginalDbgLevel;
        AcpiDbgLayer = AcpiGbl_OriginalDbgLayer;
        AcpiGbl_TraceMethodObject = ((void*)0);
    }

    if (Pathname)
    {
        ACPI_FREE (Pathname);
    }
}
