
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int ParseOpcode; } ;
struct TYPE_8__ {TYPE_1__ Asl; } ;
typedef TYPE_2__ ACPI_PARSE_OBJECT ;


 TYPE_2__* ASL_GET_PEER_NODE (TYPE_2__*) ;
 int PARSEOP_DEFAULT_ARG ;

ACPI_PARSE_OBJECT *
RsCompleteNodeAndGetNext (
    ACPI_PARSE_OBJECT *Op)
{



    Op->Asl.ParseOpcode = PARSEOP_DEFAULT_ARG;



    return (ASL_GET_PEER_NODE (Op));
}
