
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int AmlOpcode; } ;
struct TYPE_9__ {TYPE_1__ Asl; } ;
typedef TYPE_2__ ACPI_PARSE_OBJECT ;
 int UtAttachNamepathToOwner (TYPE_2__*,TYPE_2__*) ;
 TYPE_2__* UtGetArg (TYPE_2__*,int) ;

__attribute__((used)) static void
OpnAttachNameToNode (
    ACPI_PARSE_OBJECT *Op)
{
    ACPI_PARSE_OBJECT *Child = ((void*)0);


    switch (Op->Asl.AmlOpcode)
    {
    case 141:
    case 140:
    case 139:
    case 138:
    case 135:
    case 134:
    case 130:
    case 132:
    case 131:
    case 128:
    case 133:
    case 129:

        Child = UtGetArg (Op, 0);
        break;

    case 149:

        Child = UtGetArg (Op, 1);
        break;

    case 147:
    case 146:
    case 142:
    case 145:
    case 143:

        Child = UtGetArg (Op, 2);
        break;

    case 144:

        Child = UtGetArg (Op, 3);
        break;

    case 148:
    case 136:
    case 137:

        return;

    default:

        return;
    }

    if (Child)
    {
        UtAttachNamepathToOwner (Op, Child);
    }
}
