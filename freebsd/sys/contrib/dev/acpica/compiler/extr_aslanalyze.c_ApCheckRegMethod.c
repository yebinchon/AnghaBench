
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ ParseOpcode; TYPE_2__* Next; TYPE_2__* Child; TYPE_2__* Parent; int NameSeg; } ;
struct TYPE_6__ {TYPE_1__ Asl; } ;
typedef TYPE_2__ ACPI_PARSE_OBJECT ;


 int ACPI_COMPARE_NAMESEG (int ,int *) ;
 int ASL_MSG_NO_REGION ;
 int ASL_WARNING ;
 int AslError (int ,int ,TYPE_2__*,int *) ;
 int METHOD_NAME__REG ;
 scalar_t__ PARSEOP_OPERATIONREGION ;

void
ApCheckRegMethod (
    ACPI_PARSE_OBJECT *Op)
{
    ACPI_PARSE_OBJECT *Next;
    ACPI_PARSE_OBJECT *Parent;




    if (!ACPI_COMPARE_NAMESEG (METHOD_NAME__REG, &Op->Asl.NameSeg))
    {
        return;
    }



    Parent = Op->Asl.Parent;
    Next = Parent->Asl.Child;



    while (Next)
    {
        if (Next->Asl.ParseOpcode == PARSEOP_OPERATIONREGION)
        {
            return;
        }

        Next = Next->Asl.Next;
    }



    AslError (ASL_WARNING, ASL_MSG_NO_REGION, Op, ((void*)0));
}
