
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {int Path; } ;
struct TYPE_7__ {scalar_t__ Integer; } ;
struct TYPE_8__ {TYPE_1__ Value; } ;
struct TYPE_10__ {TYPE_3__ Named; TYPE_2__ Common; } ;
typedef TYPE_4__ ACPI_PARSE_OBJECT ;
typedef int ACPI_OBJECT_TYPE ;


 int AcpiDmCheckForExternalConflict (int ) ;
 int AcpiDmGetObjectTypeName (int ) ;
 int AcpiDmNamestring (int ) ;
 int AcpiOsPrintf (char*,...) ;

void
AcpiDmEmitExternal (
    ACPI_PARSE_OBJECT *NameOp,
    ACPI_PARSE_OBJECT *TypeOp)
{
    AcpiOsPrintf ("External (");
    AcpiDmNamestring (NameOp->Named.Path);
    AcpiOsPrintf ("%s)",
        AcpiDmGetObjectTypeName ((ACPI_OBJECT_TYPE) TypeOp->Common.Value.Integer));
    AcpiDmCheckForExternalConflict (NameOp->Named.Path);
    AcpiOsPrintf ("\n");
}
