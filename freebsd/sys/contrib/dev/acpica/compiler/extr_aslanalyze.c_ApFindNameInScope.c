
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ ParseOpcode; TYPE_2__* Next; int NameSeg; TYPE_2__* Child; TYPE_2__* Parent; } ;
struct TYPE_5__ {TYPE_1__ Asl; } ;
typedef int BOOLEAN ;
typedef TYPE_2__ ACPI_PARSE_OBJECT ;


 scalar_t__ ACPI_COMPARE_NAMESEG (char*,int ) ;
 int FALSE ;
 scalar_t__ PARSEOP_METHOD ;
 scalar_t__ PARSEOP_NAME ;
 int TRUE ;

BOOLEAN
ApFindNameInScope (
    char *Name,
    ACPI_PARSE_OBJECT *Op)
{
    ACPI_PARSE_OBJECT *Next;
    ACPI_PARSE_OBJECT *Parent;




    Parent = Op->Asl.Parent;
    Next = Parent->Asl.Child;



    while (Next)
    {
        if ((Next->Asl.ParseOpcode == PARSEOP_METHOD) ||
            (Next->Asl.ParseOpcode == PARSEOP_NAME))
        {
            if (ACPI_COMPARE_NAMESEG (Name, Next->Asl.NameSeg))
            {
                return (TRUE);
            }
        }

        Next = Next->Asl.Next;
    }

    return (FALSE);
}
