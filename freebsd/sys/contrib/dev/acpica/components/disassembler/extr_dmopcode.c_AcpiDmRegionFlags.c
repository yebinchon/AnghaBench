
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int UINT8 ;
struct TYPE_7__ {scalar_t__ Integer; } ;
struct TYPE_8__ {TYPE_1__ Value; int DisasmFlags; } ;
struct TYPE_9__ {TYPE_2__ Common; } ;
typedef TYPE_3__ ACPI_PARSE_OBJECT ;


 int ACPI_PARSEOP_IGNORE ;
 int AcpiDmAddressSpace (int ) ;
 int AcpiOsPrintf (char*) ;
 TYPE_3__* AcpiPsGetDepthNext (int *,TYPE_3__*) ;

void
AcpiDmRegionFlags (
    ACPI_PARSE_OBJECT *Op)
{



    Op = AcpiPsGetDepthNext (((void*)0), Op);



    Op->Common.DisasmFlags |= ACPI_PARSEOP_IGNORE;

    AcpiOsPrintf (", ");
    AcpiDmAddressSpace ((UINT8) Op->Common.Value.Integer);
}
