
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int UINT32 ;
struct TYPE_5__ {int Value; } ;
struct TYPE_7__ {TYPE_1__ Integer; int Type; } ;
struct TYPE_6__ {int Count; TYPE_3__* Pointer; } ;
typedef int ACPI_STATUS ;
typedef TYPE_2__ ACPI_OBJECT_LIST ;
typedef TYPE_3__ ACPI_OBJECT ;
typedef int ACPI_HANDLE ;


 int ACPI_TYPE_INTEGER ;
 int AcpiEvaluateObject (int ,char*,TYPE_2__*,int *) ;

ACPI_STATUS
acpi_SetInteger(ACPI_HANDLE handle, char *path, UINT32 number)
{
    ACPI_OBJECT arg1;
    ACPI_OBJECT_LIST args;

    arg1.Type = ACPI_TYPE_INTEGER;
    arg1.Integer.Value = number;
    args.Count = 1;
    args.Pointer = &arg1;

    return (AcpiEvaluateObject(handle, path, &args, ((void*)0)));
}
