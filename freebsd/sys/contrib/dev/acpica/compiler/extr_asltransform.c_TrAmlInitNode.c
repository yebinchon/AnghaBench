
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int UINT16 ;
struct TYPE_5__ {int ParseOpcode; } ;
struct TYPE_6__ {TYPE_1__ Asl; } ;
typedef TYPE_2__ ACPI_PARSE_OBJECT ;


 int UtSetParseOpName (TYPE_2__*) ;

__attribute__((used)) static void
TrAmlInitNode (
    ACPI_PARSE_OBJECT *Op,
    UINT16 ParseOpcode)
{

    Op->Asl.ParseOpcode = ParseOpcode;
    UtSetParseOpName (Op);
}
