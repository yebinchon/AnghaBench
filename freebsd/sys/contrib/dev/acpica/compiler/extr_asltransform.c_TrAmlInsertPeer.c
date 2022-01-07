
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {TYPE_2__* Next; } ;
struct TYPE_6__ {TYPE_1__ Asl; } ;
typedef TYPE_2__ ACPI_PARSE_OBJECT ;



__attribute__((used)) static void
TrAmlInsertPeer (
    ACPI_PARSE_OBJECT *Op,
    ACPI_PARSE_OBJECT *NewPeer)
{

    NewPeer->Asl.Next = Op->Asl.Next;
    Op->Asl.Next = NewPeer;
}
