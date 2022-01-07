
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_22__ TYPE_5__ ;
typedef struct TYPE_21__ TYPE_4__ ;
typedef struct TYPE_20__ TYPE_3__ ;
typedef struct TYPE_19__ TYPE_2__ ;
typedef struct TYPE_18__ TYPE_1__ ;


typedef int UINT8 ;
typedef int UINT32 ;
typedef int UINT16 ;
struct TYPE_21__ {int Flags; TYPE_5__* BufferObj; } ;
struct TYPE_20__ {scalar_t__ Type; int ReferenceCount; } ;
struct TYPE_19__ {scalar_t__ Length; } ;
struct TYPE_18__ {scalar_t__ Value; } ;
struct TYPE_22__ {TYPE_4__ BufferField; TYPE_3__ Common; TYPE_2__ Buffer; TYPE_1__ Integer; } ;
typedef int ACPI_STATUS ;
typedef TYPE_5__ ACPI_OPERAND_OBJECT ;


 int ACPI_BIOS_ERROR (int ) ;
 int ACPI_BIOS_EXCEPTION (int ) ;
 scalar_t__ ACPI_DESC_TYPE_NAMED ;
 int ACPI_ERROR (int ) ;
 scalar_t__ ACPI_FAILURE (int ) ;
 int ACPI_FUNCTION_TRACE_PTR (int ,TYPE_5__*) ;
 scalar_t__ ACPI_GET_DESCRIPTOR_TYPE (TYPE_5__*) ;
 scalar_t__ ACPI_TYPE_BUFFER ;
 int AE_AML_BAD_OPCODE ;
 int AE_AML_BUFFER_LIMIT ;
 int AE_AML_OPERAND_TYPE ;
 int AE_AML_OPERAND_VALUE ;
 int AE_INFO ;






 int AML_FIELD_ACCESS_BYTE ;
 int AML_FIELD_ACCESS_DWORD ;
 int AML_FIELD_ACCESS_QWORD ;
 int AML_FIELD_ACCESS_WORD ;
 int AOPOBJ_DATA_VALID ;
 int AcpiExPrepCommonFieldObject (TYPE_5__*,int ,int ,int,int) ;
 int AcpiPsGetOpcodeName (int) ;
 int AcpiUtGetDescriptorName (TYPE_5__*) ;
 int AcpiUtGetNodeName (TYPE_5__*) ;
 int AcpiUtGetObjectTypeName (TYPE_5__*) ;
 int AcpiUtRemoveReference (TYPE_5__*) ;
 int DsInitBufferField ;
 int return_ACPI_STATUS (int ) ;

__attribute__((used)) static ACPI_STATUS
AcpiDsInitBufferField (
    UINT16 AmlOpcode,
    ACPI_OPERAND_OBJECT *ObjDesc,
    ACPI_OPERAND_OBJECT *BufferDesc,
    ACPI_OPERAND_OBJECT *OffsetDesc,
    ACPI_OPERAND_OBJECT *LengthDesc,
    ACPI_OPERAND_OBJECT *ResultDesc)
{
    UINT32 Offset;
    UINT32 BitOffset;
    UINT32 BitCount;
    UINT8 FieldFlags;
    ACPI_STATUS Status;


    ACPI_FUNCTION_TRACE_PTR (DsInitBufferField, ObjDesc);




    if (BufferDesc->Common.Type != ACPI_TYPE_BUFFER)
    {
        ACPI_ERROR ((AE_INFO,
            "Target of Create Field is not a Buffer object - %s",
            AcpiUtGetObjectTypeName (BufferDesc)));

        Status = AE_AML_OPERAND_TYPE;
        goto Cleanup;
    }






    if (ACPI_GET_DESCRIPTOR_TYPE (ResultDesc) != ACPI_DESC_TYPE_NAMED)
    {
        ACPI_ERROR ((AE_INFO,
            "(%s) destination not a NS Node [%s]",
            AcpiPsGetOpcodeName (AmlOpcode),
            AcpiUtGetDescriptorName (ResultDesc)));

        Status = AE_AML_OPERAND_TYPE;
        goto Cleanup;
    }

    Offset = (UINT32) OffsetDesc->Integer.Value;




    switch (AmlOpcode)
    {
    case 130:



        FieldFlags = AML_FIELD_ACCESS_BYTE;
        BitOffset = Offset;
        BitCount = (UINT32) LengthDesc->Integer.Value;



        if (BitCount == 0)
        {
            ACPI_BIOS_ERROR ((AE_INFO,
                "Attempt to CreateField of length zero"));
            Status = AE_AML_OPERAND_VALUE;
            goto Cleanup;
        }
        break;

    case 133:



        BitOffset = Offset;
        BitCount = 1;
        FieldFlags = AML_FIELD_ACCESS_BYTE;
        break;

    case 132:



        BitOffset = 8 * Offset;
        BitCount = 8;
        FieldFlags = AML_FIELD_ACCESS_BYTE;
        break;

    case 128:



        BitOffset = 8 * Offset;
        BitCount = 16;
        FieldFlags = AML_FIELD_ACCESS_WORD;
        break;

    case 131:



        BitOffset = 8 * Offset;
        BitCount = 32;
        FieldFlags = AML_FIELD_ACCESS_DWORD;
        break;

    case 129:



        BitOffset = 8 * Offset;
        BitCount = 64;
        FieldFlags = AML_FIELD_ACCESS_QWORD;
        break;

    default:

        ACPI_ERROR ((AE_INFO,
            "Unknown field creation opcode 0x%02X",
            AmlOpcode));
        Status = AE_AML_BAD_OPCODE;
        goto Cleanup;
    }



    if ((BitOffset + BitCount) >
        (8 * (UINT32) BufferDesc->Buffer.Length))
    {
        Status = AE_AML_BUFFER_LIMIT;
        ACPI_BIOS_EXCEPTION ((AE_INFO, Status,
            "Field [%4.4s] at bit offset/length %u/%u "
            "exceeds size of target Buffer (%u bits)",
            AcpiUtGetNodeName (ResultDesc), BitOffset, BitCount,
            8 * (UINT32) BufferDesc->Buffer.Length));
        goto Cleanup;
    }






    Status = AcpiExPrepCommonFieldObject (
        ObjDesc, FieldFlags, 0, BitOffset, BitCount);
    if (ACPI_FAILURE (Status))
    {
        goto Cleanup;
    }

    ObjDesc->BufferField.BufferObj = BufferDesc;



    BufferDesc->Common.ReferenceCount = (UINT16)
        (BufferDesc->Common.ReferenceCount + ObjDesc->Common.ReferenceCount);


Cleanup:



    AcpiUtRemoveReference (OffsetDesc);
    AcpiUtRemoveReference (BufferDesc);

    if (AmlOpcode == 130)
    {
        AcpiUtRemoveReference (LengthDesc);
    }



    if (ACPI_FAILURE (Status))
    {
        AcpiUtRemoveReference (ResultDesc);
    }
    else
    {


        ObjDesc->BufferField.Flags |= AOPOBJ_DATA_VALID;
    }

    return_ACPI_STATUS (Status);
}
