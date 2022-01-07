
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int UINT32 ;
struct TYPE_4__ {int ExternalName; } ;
struct TYPE_5__ {TYPE_1__ Asl; } ;
typedef TYPE_2__ ACPI_PARSE_OBJECT ;


 int ACPI_BTYPE_STRING ;
 int strcmp (int ,char*) ;

UINT32
AnGetInternalMethodReturnType (
    ACPI_PARSE_OBJECT *Op)
{

    if ((!strcmp (Op->Asl.ExternalName, "\\_OSI")) ||
        (!strcmp (Op->Asl.ExternalName, "_OSI")))
    {
        return (ACPI_BTYPE_STRING);
    }

    return (0);
}
