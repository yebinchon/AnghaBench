
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int UINT8 ;
struct TYPE_13__ {int Type; int Flags; } ;
struct TYPE_12__ {int Length; scalar_t__ Pointer; } ;
struct TYPE_11__ {int * Pointer; } ;
struct TYPE_10__ {int Value; } ;
struct TYPE_14__ {TYPE_4__ Common; TYPE_3__ String; TYPE_2__ Buffer; TYPE_1__ Integer; } ;
typedef int ACPI_STATUS ;
typedef int ACPI_SIZE ;
typedef TYPE_5__ ACPI_OPERAND_OBJECT ;


 int ACPI_FUNCTION_TRACE_PTR (int ,TYPE_5__*) ;



 int AE_NO_MEMORY ;
 int AE_OK ;
 int AE_TYPE ;
 int AOPOBJ_DATA_VALID ;
 int AcpiGbl_IntegerByteWidth ;
 TYPE_5__* AcpiUtCreateBufferObject (int ) ;
 int ExConvertToBuffer ;
 int memcpy (int *,int *,int ) ;
 int return_ACPI_STATUS (int ) ;
 int strncpy (char*,char*,int ) ;

ACPI_STATUS
AcpiExConvertToBuffer (
    ACPI_OPERAND_OBJECT *ObjDesc,
    ACPI_OPERAND_OBJECT **ResultDesc)
{
    ACPI_OPERAND_OBJECT *ReturnDesc;
    UINT8 *NewBuf;


    ACPI_FUNCTION_TRACE_PTR (ExConvertToBuffer, ObjDesc);


    switch (ObjDesc->Common.Type)
    {
    case 130:



        *ResultDesc = ObjDesc;
        return_ACPI_STATUS (AE_OK);


    case 129:




        ReturnDesc = AcpiUtCreateBufferObject (AcpiGbl_IntegerByteWidth);
        if (!ReturnDesc)
        {
            return_ACPI_STATUS (AE_NO_MEMORY);
        }



        NewBuf = ReturnDesc->Buffer.Pointer;
        memcpy (NewBuf, &ObjDesc->Integer.Value, AcpiGbl_IntegerByteWidth);
        break;

    case 128:
        ReturnDesc = AcpiUtCreateBufferObject ((ACPI_SIZE)
            ObjDesc->String.Length + 1);
        if (!ReturnDesc)
        {
            return_ACPI_STATUS (AE_NO_MEMORY);
        }



        NewBuf = ReturnDesc->Buffer.Pointer;
        strncpy ((char *) NewBuf, (char *) ObjDesc->String.Pointer,
            ObjDesc->String.Length);
        break;

    default:

        return_ACPI_STATUS (AE_TYPE);
    }



    ReturnDesc->Common.Flags |= AOPOBJ_DATA_VALID;
    *ResultDesc = ReturnDesc;
    return_ACPI_STATUS (AE_OK);
}
