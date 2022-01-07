
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


struct TYPE_15__ {scalar_t__ AmlOpcode; int ParseOpcode; } ;
struct TYPE_16__ {TYPE_1__ Asl; } ;
typedef TYPE_2__ ACPI_PARSE_OBJECT ;


 scalar_t__ AML_RAW_DATA_BYTE ;
 int OpnAttachNameToNode (TYPE_2__*) ;
 int OpnDoBankField (TYPE_2__*) ;
 int OpnDoBuffer (TYPE_2__*) ;
 int OpnDoDefinitionBlock (TYPE_2__*) ;
 int OpnDoField (TYPE_2__*) ;
 int OpnDoIndexField (TYPE_2__*) ;
 int OpnDoLoadTable (TYPE_2__*) ;
 int OpnDoMethod (TYPE_2__*) ;
 int OpnDoMutex (TYPE_2__*) ;
 int OpnDoRegion (TYPE_2__*) ;
 int RsDoResourceTemplate (TYPE_2__*) ;

void
OpnGenerateAmlOperands (
    ACPI_PARSE_OBJECT *Op)
{


    if (Op->Asl.AmlOpcode == AML_RAW_DATA_BYTE)
    {
        return;
    }

    switch (Op->Asl.ParseOpcode)
    {
    case 139:

        OpnDoDefinitionBlock (Op);
        break;

    case 135:

        OpnDoMethod (Op);
        break;

    case 133:

        OpnDoMutex (Op);
        break;

    case 138:

        OpnDoField (Op);
        break;

    case 137:

        OpnDoIndexField (Op);
        break;

    case 141:

        OpnDoBankField (Op);
        break;

    case 140:

        OpnDoBuffer (Op);
        break;

    case 136:

        OpnDoLoadTable (Op);
        break;

    case 130:

        OpnDoRegion (Op);
        break;

    case 129:

        RsDoResourceTemplate (Op);
        break;

    case 132:
    case 131:
    case 134:
    case 128:
    default:

        break;
    }



    OpnAttachNameToNode (Op);
}
