
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ UINT32 ;
struct TYPE_5__ {scalar_t__ Integer; } ;
struct TYPE_6__ {TYPE_1__ Value; } ;
struct TYPE_7__ {TYPE_2__ Common; } ;
typedef size_t ACPI_SIZE ;
typedef TYPE_3__ ACPI_PARSE_OBJECT ;


 scalar_t__ ACPI_MAX_MATCH_OPCODE ;
 int * AcpiGbl_MatchOps ;
 int AcpiOsPrintf (char*,...) ;

__attribute__((used)) static void
AcpiDmMatchKeyword (
    ACPI_PARSE_OBJECT *Op)
{

    if (((UINT32) Op->Common.Value.Integer) > ACPI_MAX_MATCH_OPCODE)
    {
        AcpiOsPrintf ("/* Unknown Match Keyword encoding */");
    }
    else
    {
        AcpiOsPrintf ("%s",
            AcpiGbl_MatchOps[(ACPI_SIZE) Op->Common.Value.Integer]);
    }
}
