
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int * Arg; } ;
struct TYPE_6__ {scalar_t__ AmlOpcode; TYPE_1__ Value; } ;
struct TYPE_7__ {TYPE_2__ Common; } ;
typedef int BOOLEAN ;
typedef TYPE_3__ ACPI_PARSE_OBJECT ;


 scalar_t__ AML_INT_NAMEPATH_OP ;
 int FALSE ;
 int TRUE ;

__attribute__((used)) static BOOLEAN
AcpiDmIsValidTarget (
    ACPI_PARSE_OBJECT *Target)
{

    if (!Target)
    {
        return (FALSE);
    }

    if ((Target->Common.AmlOpcode == AML_INT_NAMEPATH_OP) &&
        (Target->Common.Value.Arg == ((void*)0)))
    {
        return (FALSE);
    }

    return (TRUE);
}
