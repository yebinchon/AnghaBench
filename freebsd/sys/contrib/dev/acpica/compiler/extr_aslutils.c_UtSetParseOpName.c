
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int ParseOpcode; int ParseOpName; } ;
struct TYPE_5__ {TYPE_1__ Asl; } ;
typedef TYPE_2__ ACPI_PARSE_OBJECT ;


 int ACPI_MAX_PARSEOP_NAME ;
 int AcpiUtSafeStrncpy (int ,int ,int ) ;
 int UtGetOpName (int ) ;

void
UtSetParseOpName (
    ACPI_PARSE_OBJECT *Op)
{

    AcpiUtSafeStrncpy (Op->Asl.ParseOpName, UtGetOpName (Op->Asl.ParseOpcode),
        ACPI_MAX_PARSEOP_NAME);
}
