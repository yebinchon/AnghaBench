
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_15__ {scalar_t__ Pointer; int Length; } ;
struct TYPE_14__ {int Type; } ;
struct TYPE_11__ {int Handle; int ActualType; } ;
struct TYPE_13__ {int Type; TYPE_1__ Reference; } ;
struct TYPE_12__ {int Count; TYPE_3__* Pointer; } ;
typedef int ACPI_STATUS ;
typedef int ACPI_OBJECT_TYPE ;
typedef TYPE_2__ ACPI_OBJECT_LIST ;
typedef TYPE_3__ ACPI_OBJECT ;
typedef TYPE_4__ ACPI_NAMESPACE_NODE ;
typedef TYPE_5__ ACPI_BUFFER ;


 int ACPI_ALLOCATE_BUFFER ;
 int ACPI_CAST_PTR (int ,TYPE_4__*) ;
 scalar_t__ ACPI_FAILURE (int ) ;
 int ACPI_HANDLE ;


 int ACPI_TYPE_LOCAL_REFERENCE ;


 int AE_TYPE ;
 int AcpiEvaluateObject (int ,int *,TYPE_2__*,TYPE_5__*) ;
 int AcpiFormatException (int ) ;
 int AcpiGbl_MethodExecuting ;
 int AcpiOsFree (scalar_t__) ;
 int AcpiOsPrintf (char*,int ,...) ;
 int AcpiUtGetTypeName (int) ;
 int FALSE ;
 int ReadHandle ;
 int TRUE ;

__attribute__((used)) static ACPI_STATUS
AcpiDbReadFromObject (
    ACPI_NAMESPACE_NODE *Node,
    ACPI_OBJECT_TYPE ExpectedType,
    ACPI_OBJECT **Value)
{
    ACPI_OBJECT *RetValue;
    ACPI_OBJECT_LIST ParamObjects;
    ACPI_OBJECT Params[2];
    ACPI_BUFFER ReturnObj;
    ACPI_STATUS Status;


    Params[0].Type = ACPI_TYPE_LOCAL_REFERENCE;
    Params[0].Reference.ActualType = Node->Type;
    Params[0].Reference.Handle = ACPI_CAST_PTR (ACPI_HANDLE, Node);

    ParamObjects.Count = 1;
    ParamObjects.Pointer = Params;

    ReturnObj.Length = ACPI_ALLOCATE_BUFFER;

    AcpiGbl_MethodExecuting = TRUE;
    Status = AcpiEvaluateObject (ReadHandle, ((void*)0),
        &ParamObjects, &ReturnObj);

    AcpiGbl_MethodExecuting = FALSE;
    if (ACPI_FAILURE (Status))
    {
        AcpiOsPrintf ("Could not read from object, %s",
            AcpiFormatException (Status));
        return (Status);
    }

    RetValue = (ACPI_OBJECT *) ReturnObj.Pointer;

    switch (RetValue->Type)
    {
    case 130:
    case 131:
    case 128:
    case 129:





        if (RetValue->Type != ExpectedType)
        {
            AcpiOsPrintf (" Type mismatch:  Expected %s, Received %s",
                AcpiUtGetTypeName (ExpectedType),
                AcpiUtGetTypeName (RetValue->Type));

            AcpiOsFree (ReturnObj.Pointer);
            return (AE_TYPE);
        }

        *Value = RetValue;
        break;

    default:

        AcpiOsPrintf (" Unsupported return object type, %s",
            AcpiUtGetTypeName (RetValue->Type));

        AcpiOsFree (ReturnObj.Pointer);
        return (AE_TYPE);
    }

    return (Status);
}
