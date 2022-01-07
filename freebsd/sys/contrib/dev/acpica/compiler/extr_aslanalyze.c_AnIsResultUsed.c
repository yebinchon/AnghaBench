
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int ParseOpcode; TYPE_2__* Child; TYPE_2__* Parent; } ;
struct TYPE_5__ {TYPE_1__ Asl; } ;
typedef int BOOLEAN ;
typedef TYPE_2__ ACPI_PARSE_OBJECT ;


 int FALSE ;







 int TRUE ;

BOOLEAN
AnIsResultUsed (
    ACPI_PARSE_OBJECT *Op)
{
    ACPI_PARSE_OBJECT *Parent;


    switch (Op->Asl.ParseOpcode)
    {
    case 130:
    case 134:



        return (TRUE);

    default:

        break;
    }



    Parent = Op->Asl.Parent;
    switch (Parent->Asl.ParseOpcode)
    {


    case 131:
    case 128:



        if (Parent->Asl.Child == Op)
        {
            return (TRUE);
        }

        return (FALSE);



    case 129:
    case 133:
    case 132:

        return (FALSE);

    default:



        return (TRUE);
    }
}
