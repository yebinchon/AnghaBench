
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int UINT64 ;
struct TYPE_7__ {int Value; } ;
struct TYPE_6__ {scalar_t__ Type; } ;
struct TYPE_8__ {TYPE_2__ Integer; TYPE_1__ Common; } ;
typedef int BOOLEAN ;
typedef TYPE_3__ ACPI_OPERAND_OBJECT ;


 scalar_t__ ACPI_DESC_TYPE_OPERAND ;
 int ACPI_FUNCTION_ENTRY () ;
 scalar_t__ ACPI_GET_DESCRIPTOR_TYPE (TYPE_3__*) ;
 scalar_t__ ACPI_TYPE_INTEGER ;
 scalar_t__ ACPI_UINT32_MAX ;
 int AcpiGbl_IntegerByteWidth ;
 int FALSE ;
 int TRUE ;

BOOLEAN
AcpiExTruncateFor32bitTable (
    ACPI_OPERAND_OBJECT *ObjDesc)
{

    ACPI_FUNCTION_ENTRY ();






    if ((!ObjDesc) ||
        (ACPI_GET_DESCRIPTOR_TYPE (ObjDesc) != ACPI_DESC_TYPE_OPERAND) ||
        (ObjDesc->Common.Type != ACPI_TYPE_INTEGER))
    {
        return (FALSE);
    }

    if ((AcpiGbl_IntegerByteWidth == 4) &&
        (ObjDesc->Integer.Value > (UINT64) ACPI_UINT32_MAX))
    {




        ObjDesc->Integer.Value &= (UINT64) ACPI_UINT32_MAX;
        return (TRUE);
    }

    return (FALSE);
}
