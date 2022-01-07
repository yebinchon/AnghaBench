
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ UINT32 ;
struct TYPE_5__ {TYPE_2__* Next; TYPE_2__* Child; } ;
struct TYPE_6__ {TYPE_1__ Asl; } ;
typedef TYPE_2__ ACPI_PARSE_OBJECT ;



ACPI_PARSE_OBJECT *
UtGetArg (
    ACPI_PARSE_OBJECT *Op,
    UINT32 Argn)
{
    ACPI_PARSE_OBJECT *Arg = ((void*)0);




    Arg = Op->Asl.Child;
    while (Arg && Argn)
    {
        Argn--;
        Arg = Arg->Asl.Next;
    }

    return (Arg);
}
