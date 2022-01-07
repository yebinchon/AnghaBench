
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int ExternalName; } ;
struct TYPE_5__ {TYPE_1__ Asl; } ;
typedef int BOOLEAN ;
typedef TYPE_2__ ACPI_PARSE_OBJECT ;


 int FALSE ;
 int TRUE ;
 int strcmp (int ,char*) ;

BOOLEAN
AnIsInternalMethod (
    ACPI_PARSE_OBJECT *Op)
{

    if ((!strcmp (Op->Asl.ExternalName, "\\_OSI")) ||
        (!strcmp (Op->Asl.ExternalName, "_OSI")))
    {
        return (TRUE);
    }

    return (FALSE);
}
