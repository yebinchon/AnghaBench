
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {TYPE_2__* Next; TYPE_2__* Child; } ;
struct TYPE_7__ {TYPE_1__ Asl; } ;
typedef TYPE_2__ ACPI_PARSE_OBJECT ;


 int OpnDoFieldCommon (TYPE_2__*,TYPE_2__*) ;

__attribute__((used)) static void
OpnDoBankField (
    ACPI_PARSE_OBJECT *Op)
{
    ACPI_PARSE_OBJECT *Next;





    Next = Op->Asl.Child;



    Next = Next->Asl.Next;



    Next = Next->Asl.Next;



    OpnDoFieldCommon (Op, Next->Asl.Next);
}
