
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int UINT32 ;
struct TYPE_7__ {scalar_t__ Type; int Flags; } ;
struct TYPE_6__ {int Value; } ;
struct TYPE_8__ {TYPE_2__ Common; TYPE_1__ Reference; } ;
typedef int ACPI_STATUS ;
typedef TYPE_3__ ACPI_OPERAND_OBJECT ;


 scalar_t__ ACPI_DESC_TYPE_OPERAND ;
 int ACPI_EXCEPTION (int ) ;
 int ACPI_FUNCTION_TRACE (int ) ;
 scalar_t__ ACPI_GET_DESCRIPTOR_TYPE (TYPE_3__*) ;
 scalar_t__ ACPI_SUCCESS (int ) ;
 scalar_t__ ACPI_TYPE_LOCAL_REFERENCE ;
 int ACPI_WARNING (int ) ;
 int AE_AML_OPERAND_TYPE ;
 int AE_INFO ;
 int AE_NOT_IMPLEMENTED ;
 int AE_OK ;
 int AOPOBJ_DATA_VALID ;
 int AcpiExEnterInterpreter () ;
 int AcpiExExitInterpreter () ;
 int AcpiTbUnloadTable (int ) ;
 int ExUnloadTable ;
 int return_ACPI_STATUS (int ) ;

ACPI_STATUS
AcpiExUnloadTable (
    ACPI_OPERAND_OBJECT *DdbHandle)
{
    ACPI_STATUS Status = AE_OK;
    ACPI_OPERAND_OBJECT *TableDesc = DdbHandle;
    UINT32 TableIndex;


    ACPI_FUNCTION_TRACE (ExUnloadTable);







    ACPI_WARNING ((AE_INFO,
        "Received request to unload an ACPI table"));
    ACPI_EXCEPTION ((AE_INFO, AE_NOT_IMPLEMENTED,
        "AML Unload operator is not supported"));
    if ((!DdbHandle) ||
        (ACPI_GET_DESCRIPTOR_TYPE (DdbHandle) != ACPI_DESC_TYPE_OPERAND) ||
        (DdbHandle->Common.Type != ACPI_TYPE_LOCAL_REFERENCE) ||
        (!(DdbHandle->Common.Flags & AOPOBJ_DATA_VALID)))
    {
        return_ACPI_STATUS (AE_AML_OPERAND_TYPE);
    }



    TableIndex = TableDesc->Reference.Value;





    AcpiExExitInterpreter ();
    Status = AcpiTbUnloadTable (TableIndex);
    AcpiExEnterInterpreter ();





    if (ACPI_SUCCESS (Status))
    {
        DdbHandle->Common.Flags &= ~AOPOBJ_DATA_VALID;
    }
    return_ACPI_STATUS (Status);
}
