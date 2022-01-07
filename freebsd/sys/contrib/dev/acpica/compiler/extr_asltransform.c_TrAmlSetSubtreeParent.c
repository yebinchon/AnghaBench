
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {TYPE_2__* Next; TYPE_2__* Parent; } ;
struct TYPE_6__ {TYPE_1__ Asl; } ;
typedef TYPE_2__ ACPI_PARSE_OBJECT ;



__attribute__((used)) static void
TrAmlSetSubtreeParent (
    ACPI_PARSE_OBJECT *Op,
    ACPI_PARSE_OBJECT *Parent)
{
    ACPI_PARSE_OBJECT *Next;


    Next = Op;
    while (Next)
    {
        Next->Asl.Parent = Parent;
        Next = Next->Asl.Next;
    }
}
