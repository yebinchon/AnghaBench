
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef void* UINT64 ;
struct TYPE_5__ {void* Value; } ;
struct TYPE_7__ {TYPE_1__ Integer; void* Type; } ;
struct TYPE_6__ {int Count; TYPE_3__* Pointer; } ;
typedef TYPE_2__ ACPI_OBJECT_LIST ;
typedef TYPE_3__ ACPI_OBJECT ;
typedef int ACPI_HANDLE ;


 int ACPI_SERIAL_ASSERT (int ) ;
 void* ACPI_TYPE_INTEGER ;
 int AcpiEvaluateObject (int ,char*,TYPE_2__*,int *) ;
 int panasonic ;

__attribute__((used)) static void
acpi_panasonic_sset(ACPI_HANDLE h, UINT64 index, UINT64 val)
{
 ACPI_OBJECT_LIST args;
 ACPI_OBJECT obj[2];

 ACPI_SERIAL_ASSERT(panasonic);
 obj[0].Type = ACPI_TYPE_INTEGER;
 obj[0].Integer.Value = index;
 obj[1].Type = ACPI_TYPE_INTEGER;
 obj[1].Integer.Value = val;
 args.Count = 2;
 args.Pointer = obj;
 AcpiEvaluateObject(h, "SSET", &args, ((void*)0));
}
