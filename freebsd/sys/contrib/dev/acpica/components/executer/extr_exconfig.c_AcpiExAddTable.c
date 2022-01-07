
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int UINT32 ;
struct TYPE_7__ {int Value; int Class; } ;
struct TYPE_6__ {int Flags; } ;
struct TYPE_8__ {TYPE_2__ Reference; TYPE_1__ Common; } ;
typedef int ACPI_STATUS ;
typedef TYPE_3__ ACPI_OPERAND_OBJECT ;


 int ACPI_FUNCTION_TRACE (int ) ;
 int ACPI_REFCLASS_TABLE ;
 int ACPI_TYPE_LOCAL_REFERENCE ;
 int AE_NO_MEMORY ;
 int AE_OK ;
 int AOPOBJ_DATA_VALID ;
 TYPE_3__* AcpiUtCreateInternalObject (int ) ;
 int ExAddTable ;
 int return_ACPI_STATUS (int ) ;

__attribute__((used)) static ACPI_STATUS
AcpiExAddTable (
    UINT32 TableIndex,
    ACPI_OPERAND_OBJECT **DdbHandle)
{
    ACPI_OPERAND_OBJECT *ObjDesc;


    ACPI_FUNCTION_TRACE (ExAddTable);




    ObjDesc = AcpiUtCreateInternalObject (ACPI_TYPE_LOCAL_REFERENCE);
    if (!ObjDesc)
    {
        return_ACPI_STATUS (AE_NO_MEMORY);
    }



    ObjDesc->Common.Flags |= AOPOBJ_DATA_VALID;
    ObjDesc->Reference.Class = ACPI_REFCLASS_TABLE;
    ObjDesc->Reference.Value = TableIndex;
    *DdbHandle = ObjDesc;
    return_ACPI_STATUS (AE_OK);
}
