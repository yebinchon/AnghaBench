
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {TYPE_3__* Arg; } ;
struct TYPE_7__ {TYPE_3__* Next; TYPE_1__ Value; } ;
struct TYPE_8__ {TYPE_2__ Common; } ;
typedef TYPE_3__ ACPI_PARSE_OBJECT ;



__attribute__((used)) static void
AcpiDmPromoteTarget (
    ACPI_PARSE_OBJECT *Op,
    ACPI_PARSE_OBJECT *Target)
{
    ACPI_PARSE_OBJECT *Child;




    Child = Op->Common.Value.Arg;
    Op->Common.Value.Arg = Target;
    Target->Common.Next = Child;



    while (Child->Common.Next != Target)
    {
        Child = Child->Common.Next;
    }

    Child->Common.Next = ((void*)0);
}
