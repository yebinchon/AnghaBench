
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {char* String; } ;
struct TYPE_7__ {scalar_t__ ParseOpcode; int AmlLength; TYPE_3__* Next; TYPE_1__ Value; TYPE_3__* Child; } ;
struct TYPE_8__ {TYPE_2__ Asl; } ;
typedef TYPE_3__ ACPI_PARSE_OBJECT ;


 scalar_t__ DEFAULT_ARG ;
 int OpcGenerateAmlOpcode (TYPE_3__*) ;
 scalar_t__ PARSEOP_STRING_LITERAL ;
 scalar_t__ PARSEOP_ZERO ;
 void* ZERO ;

__attribute__((used)) static void
OpnDoLoadTable (
    ACPI_PARSE_OBJECT *Op)
{
    ACPI_PARSE_OBJECT *Next;





    Next = Op->Asl.Child;



    Next = Next->Asl.Next;



    Next = Next->Asl.Next;



    Next = Next->Asl.Next;
    if (Next->Asl.ParseOpcode == PARSEOP_ZERO)
    {
        Next->Asl.ParseOpcode = PARSEOP_STRING_LITERAL;
        Next->Asl.Value.String = "\\";
        Next->Asl.AmlLength = 2;
        OpcGenerateAmlOpcode (Next);
    }
}
