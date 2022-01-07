
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_35__ TYPE_9__ ;
typedef struct TYPE_34__ TYPE_8__ ;
typedef struct TYPE_33__ TYPE_7__ ;
typedef struct TYPE_32__ TYPE_6__ ;
typedef struct TYPE_31__ TYPE_5__ ;
typedef struct TYPE_30__ TYPE_4__ ;
typedef struct TYPE_29__ TYPE_3__ ;
typedef struct TYPE_28__ TYPE_2__ ;
typedef struct TYPE_27__ TYPE_21__ ;
typedef struct TYPE_26__ TYPE_1__ ;
typedef struct TYPE_25__ TYPE_16__ ;
typedef struct TYPE_24__ TYPE_12__ ;
typedef struct TYPE_23__ TYPE_11__ ;
typedef struct TYPE_22__ TYPE_10__ ;


typedef int UINT8 ;
typedef scalar_t__ UINT32 ;
typedef int UINT16 ;
struct TYPE_35__ {int Length; int Data; } ;
struct TYPE_34__ {int AmlLength; int AmlStart; } ;
struct TYPE_33__ {int Flags; TYPE_11__* NextObject; } ;
struct TYPE_32__ {TYPE_16__* BankObj; TYPE_16__* RegionObj; int BaseByteOffset; int StartFieldBitOffset; int Value; } ;
struct TYPE_31__ {int AccessByteWidth; TYPE_16__* RegionObj; int BaseByteOffset; int StartFieldBitOffset; int PinNumberIndex; int ResourceLength; int ResourceBuffer; int AccessLength; } ;
struct TYPE_30__ {int BitLength; int AccessByteWidth; int Node; } ;
struct TYPE_29__ {int SpaceId; } ;
struct TYPE_28__ {int Length; int Pointer; } ;
struct TYPE_27__ {TYPE_9__ Named; } ;
struct TYPE_26__ {TYPE_11__* Object; } ;
struct TYPE_25__ {TYPE_3__ Region; } ;
struct TYPE_24__ {int FieldType; int FieldNode; int FieldBitPosition; int DataRegisterNode; int RegisterNode; int RegionNode; int BankValue; int PinNumberIndex; int ResourceLength; int ResourceBuffer; TYPE_1__* ConnectionNode; int AccessLength; int FieldBitLength; int Attribute; int FieldFlags; } ;
struct TYPE_22__ {TYPE_16__* DataObj; TYPE_16__* IndexObj; scalar_t__ Value; int BaseByteOffset; int StartFieldBitOffset; int AccessByteWidth; } ;
struct TYPE_23__ {TYPE_10__ IndexField; TYPE_5__ Field; TYPE_8__ Extra; TYPE_7__ Common; TYPE_6__ BankField; TYPE_4__ CommonField; TYPE_2__ Buffer; } ;
typedef int ACPI_STATUS ;
typedef TYPE_11__ ACPI_OPERAND_OBJECT ;
typedef TYPE_12__ ACPI_CREATE_FIELD_INFO ;


 int ACPI_ADR_SPACE_EC ;
 TYPE_21__* ACPI_CAST_PTR (int ,int ) ;
 int ACPI_DB_BFIELD ;
 int ACPI_DEBUG_PRINT (int ) ;
 int ACPI_DIV_8 (int ) ;
 int ACPI_ERROR (int ) ;
 scalar_t__ ACPI_FAILURE (int ) ;
 int ACPI_FUNCTION_TRACE (int ) ;
 int ACPI_PARSE_OBJECT ;
 scalar_t__ ACPI_ROUND_BITS_UP_TO_BYTES (int) ;
 int ACPI_ROUND_DOWN (int ,int ) ;



 scalar_t__ ACPI_TYPE_REGION ;
 int AE_AML_INTERNAL ;
 int AE_AML_NO_OPERAND ;
 int AE_AML_OPERAND_TYPE ;
 int AE_INFO ;
 int AE_NO_MEMORY ;
 int AOPOBJ_DATA_VALID ;
 int AcpiDsGetBufferArguments (TYPE_11__*) ;
 int AcpiExPrepCommonFieldObject (TYPE_11__*,int ,int ,int ,int ) ;
 int AcpiNsAttachObject (int ,TYPE_11__*,scalar_t__) ;
 void* AcpiNsGetAttachedObject (int ) ;
 scalar_t__ AcpiNsGetType (int ) ;
 int AcpiUtAddReference (TYPE_16__*) ;
 TYPE_11__* AcpiUtCreateInternalObject (int) ;
 int AcpiUtDeleteObjectDesc (TYPE_11__*) ;
 int AcpiUtGetNodeName (int ) ;
 int AcpiUtGetTypeName (scalar_t__) ;
 int AcpiUtRemoveReference (TYPE_11__*) ;
 int ExPrepFieldValue ;
 int return_ACPI_STATUS (int ) ;

ACPI_STATUS
AcpiExPrepFieldValue (
    ACPI_CREATE_FIELD_INFO *Info)
{
    ACPI_OPERAND_OBJECT *ObjDesc;
    ACPI_OPERAND_OBJECT *SecondDesc = ((void*)0);
    ACPI_STATUS Status;
    UINT32 AccessByteWidth;
    UINT32 Type;


    ACPI_FUNCTION_TRACE (ExPrepFieldValue);




    if (Info->FieldType != 129)
    {
        if (!Info->RegionNode)
        {
            ACPI_ERROR ((AE_INFO, "Null RegionNode"));
            return_ACPI_STATUS (AE_AML_NO_OPERAND);
        }

        Type = AcpiNsGetType (Info->RegionNode);
        if (Type != ACPI_TYPE_REGION)
        {
            ACPI_ERROR ((AE_INFO, "Needed Region, found type 0x%X (%s)",
                Type, AcpiUtGetTypeName (Type)));

            return_ACPI_STATUS (AE_AML_OPERAND_TYPE);
        }
    }



    ObjDesc = AcpiUtCreateInternalObject (Info->FieldType);
    if (!ObjDesc)
    {
        return_ACPI_STATUS (AE_NO_MEMORY);
    }



    ObjDesc->CommonField.Node = Info->FieldNode;
    Status = AcpiExPrepCommonFieldObject (ObjDesc,
        Info->FieldFlags, Info->Attribute,
        Info->FieldBitPosition, Info->FieldBitLength);
    if (ACPI_FAILURE (Status))
    {
        AcpiUtDeleteObjectDesc (ObjDesc);
        return_ACPI_STATUS (Status);
    }



    switch (Info->FieldType)
    {
    case 128:

        ObjDesc->Field.RegionObj = AcpiNsGetAttachedObject (Info->RegionNode);



        ObjDesc->Field.AccessLength = Info->AccessLength;

        if (Info->ConnectionNode)
        {
            SecondDesc = Info->ConnectionNode->Object;
            if (!(SecondDesc->Common.Flags & AOPOBJ_DATA_VALID))
            {
                Status = AcpiDsGetBufferArguments (SecondDesc);
                if (ACPI_FAILURE (Status))
                {
                    AcpiUtDeleteObjectDesc (ObjDesc);
                    return_ACPI_STATUS (Status);
                }
            }

            ObjDesc->Field.ResourceBuffer =
                SecondDesc->Buffer.Pointer;
            ObjDesc->Field.ResourceLength =
                (UINT16) SecondDesc->Buffer.Length;
        }
        else if (Info->ResourceBuffer)
        {
            ObjDesc->Field.ResourceBuffer = Info->ResourceBuffer;
            ObjDesc->Field.ResourceLength = Info->ResourceLength;
        }

        ObjDesc->Field.PinNumberIndex = Info->PinNumberIndex;



        if ((ObjDesc->Field.RegionObj->Region.SpaceId == ACPI_ADR_SPACE_EC) &&
            (ObjDesc->CommonField.BitLength > 8))
        {
            AccessByteWidth = ACPI_ROUND_BITS_UP_TO_BYTES (
                ObjDesc->CommonField.BitLength);



            if (AccessByteWidth < 256)
            {
                ObjDesc->CommonField.AccessByteWidth =
                    (UINT8) AccessByteWidth;
            }
        }



        AcpiUtAddReference (ObjDesc->Field.RegionObj);

        ACPI_DEBUG_PRINT ((ACPI_DB_BFIELD,
            "RegionField: BitOff %X, Off %X, Gran %X, Region %p\n",
            ObjDesc->Field.StartFieldBitOffset,
            ObjDesc->Field.BaseByteOffset,
            ObjDesc->Field.AccessByteWidth,
            ObjDesc->Field.RegionObj));
        break;

    case 130:

        ObjDesc->BankField.Value = Info->BankValue;
        ObjDesc->BankField.RegionObj =
            AcpiNsGetAttachedObject (Info->RegionNode);
        ObjDesc->BankField.BankObj =
            AcpiNsGetAttachedObject (Info->RegisterNode);



        AcpiUtAddReference (ObjDesc->BankField.RegionObj);
        AcpiUtAddReference (ObjDesc->BankField.BankObj);

        ACPI_DEBUG_PRINT ((ACPI_DB_BFIELD,
            "Bank Field: BitOff %X, Off %X, Gran %X, Region %p, BankReg %p\n",
            ObjDesc->BankField.StartFieldBitOffset,
            ObjDesc->BankField.BaseByteOffset,
            ObjDesc->Field.AccessByteWidth,
            ObjDesc->BankField.RegionObj,
            ObjDesc->BankField.BankObj));






        SecondDesc = ObjDesc->Common.NextObject;
        SecondDesc->Extra.AmlStart = ACPI_CAST_PTR (ACPI_PARSE_OBJECT,
            Info->DataRegisterNode)->Named.Data;
        SecondDesc->Extra.AmlLength = ACPI_CAST_PTR (ACPI_PARSE_OBJECT,
            Info->DataRegisterNode)->Named.Length;

        break;

    case 129:



        ObjDesc->IndexField.IndexObj =
            AcpiNsGetAttachedObject (Info->RegisterNode);
        ObjDesc->IndexField.DataObj =
            AcpiNsGetAttachedObject (Info->DataRegisterNode);

        if (!ObjDesc->IndexField.DataObj || !ObjDesc->IndexField.IndexObj)
        {
            ACPI_ERROR ((AE_INFO, "Null Index Object during field prep"));
            AcpiUtDeleteObjectDesc (ObjDesc);
            return_ACPI_STATUS (AE_AML_INTERNAL);
        }



        AcpiUtAddReference (ObjDesc->IndexField.DataObj);
        AcpiUtAddReference (ObjDesc->IndexField.IndexObj);
        ObjDesc->IndexField.Value = (UINT32) ACPI_ROUND_DOWN (
            ACPI_DIV_8 (Info->FieldBitPosition),
            ObjDesc->IndexField.AccessByteWidth);

        ACPI_DEBUG_PRINT ((ACPI_DB_BFIELD,
            "IndexField: BitOff %X, Off %X, Value %X, "
            "Gran %X, Index %p, Data %p\n",
            ObjDesc->IndexField.StartFieldBitOffset,
            ObjDesc->IndexField.BaseByteOffset,
            ObjDesc->IndexField.Value,
            ObjDesc->Field.AccessByteWidth,
            ObjDesc->IndexField.IndexObj,
            ObjDesc->IndexField.DataObj));
        break;

    default:



        break;
    }





    Status = AcpiNsAttachObject (
        Info->FieldNode, ObjDesc, AcpiNsGetType (Info->FieldNode));

    ACPI_DEBUG_PRINT ((ACPI_DB_BFIELD,
        "Set NamedObj %p [%4.4s], ObjDesc %p\n",
        Info->FieldNode, AcpiUtGetNodeName (Info->FieldNode), ObjDesc));



    AcpiUtRemoveReference (ObjDesc);
    return_ACPI_STATUS (Status);
}
