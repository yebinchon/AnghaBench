
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_14__ {int Type; } ;
struct TYPE_11__ {int Handle; int ActualType; } ;
struct TYPE_13__ {TYPE_1__ Reference; int Type; } ;
struct TYPE_12__ {int Count; TYPE_3__* Pointer; } ;
typedef int ACPI_STATUS ;
typedef TYPE_2__ ACPI_OBJECT_LIST ;
typedef TYPE_3__ ACPI_OBJECT ;
typedef TYPE_4__ ACPI_NAMESPACE_NODE ;


 int ACPI_CAST_PTR (int ,TYPE_4__*) ;
 scalar_t__ ACPI_FAILURE (int ) ;
 int ACPI_HANDLE ;
 int ACPI_TYPE_LOCAL_REFERENCE ;
 int AcpiEvaluateObject (int ,int *,TYPE_2__*,int *) ;
 int AcpiFormatException (int ) ;
 int AcpiGbl_MethodExecuting ;
 int AcpiOsPrintf (char*,int ) ;
 int FALSE ;
 int TRUE ;
 int WriteHandle ;
 int memcpy (TYPE_3__*,TYPE_3__*,int) ;

__attribute__((used)) static ACPI_STATUS
AcpiDbWriteToObject (
    ACPI_NAMESPACE_NODE *Node,
    ACPI_OBJECT *Value)
{
    ACPI_OBJECT_LIST ParamObjects;
    ACPI_OBJECT Params[2];
    ACPI_STATUS Status;


    Params[0].Type = ACPI_TYPE_LOCAL_REFERENCE;
    Params[0].Reference.ActualType = Node->Type;
    Params[0].Reference.Handle = ACPI_CAST_PTR (ACPI_HANDLE, Node);



    memcpy (&Params[1], Value, sizeof (ACPI_OBJECT));

    ParamObjects.Count = 2;
    ParamObjects.Pointer = Params;

    AcpiGbl_MethodExecuting = TRUE;
    Status = AcpiEvaluateObject (WriteHandle, ((void*)0), &ParamObjects, ((void*)0));
    AcpiGbl_MethodExecuting = FALSE;

    if (ACPI_FAILURE (Status))
    {
        AcpiOsPrintf ("Could not write to object, %s",
            AcpiFormatException (Status));
    }

    return (Status);
}
