
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_8__ ;
typedef struct TYPE_18__ TYPE_7__ ;
typedef struct TYPE_17__ TYPE_6__ ;
typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef scalar_t__ UINT64 ;
typedef scalar_t__ UINT32 ;
struct TYPE_18__ {int AccessByteWidth; } ;
struct TYPE_17__ {int Type; int Flags; } ;
struct TYPE_16__ {scalar_t__ Value; int DataObj; int IndexObj; } ;
struct TYPE_15__ {scalar_t__ Value; int BankObj; } ;
struct TYPE_14__ {scalar_t__ BaseByteOffset; TYPE_2__* BufferObj; } ;
struct TYPE_19__ {TYPE_7__ CommonField; TYPE_6__ Common; TYPE_5__ IndexField; TYPE_4__ BankField; TYPE_3__ BufferField; } ;
struct TYPE_12__ {scalar_t__ Pointer; } ;
struct TYPE_13__ {TYPE_1__ Buffer; } ;
typedef int FieldDatumByteOffset ;
typedef int ACPI_STATUS ;
typedef TYPE_8__ ACPI_OPERAND_OBJECT ;


 int ACPI_DB_BFIELD ;
 int ACPI_DEBUG_PRINT (int ) ;
 int ACPI_ERROR (int ) ;
 int ACPI_FAILURE (int ) ;
 int ACPI_FORMAT_UINT64 (scalar_t__) ;
 int ACPI_FUNCTION_TRACE_U32 (int ,scalar_t__) ;
 scalar_t__ ACPI_READ ;
 scalar_t__ ACPI_SUCCESS (int ) ;




 int AE_AML_INTERNAL ;
 int AE_AML_REGISTER_LIMIT ;
 int AE_INFO ;
 int AE_OK ;
 int AOPOBJ_DATA_VALID ;
 int AcpiDsGetBufferFieldArguments (TYPE_8__*) ;
 int AcpiExAccessRegion (TYPE_8__*,scalar_t__,scalar_t__*,scalar_t__) ;
 int AcpiExExtractFromField (int ,scalar_t__*,int) ;
 int AcpiExInsertIntoField (int ,scalar_t__*,int) ;
 int AcpiExRegisterOverflow (int ,scalar_t__) ;
 int ExFieldDatumIo ;
 int memcpy (scalar_t__,scalar_t__*,int ) ;
 int return_ACPI_STATUS (int ) ;

__attribute__((used)) static ACPI_STATUS
AcpiExFieldDatumIo (
    ACPI_OPERAND_OBJECT *ObjDesc,
    UINT32 FieldDatumByteOffset,
    UINT64 *Value,
    UINT32 ReadWrite)
{
    ACPI_STATUS Status;
    UINT64 LocalValue;


    ACPI_FUNCTION_TRACE_U32 (ExFieldDatumIo, FieldDatumByteOffset);


    if (ReadWrite == ACPI_READ)
    {
        if (!Value)
        {
            LocalValue = 0;


            Value = &LocalValue;
        }



        *Value = 0;
    }
    switch (ObjDesc->Common.Type)
    {
    case 131:




        if (!(ObjDesc->Common.Flags & AOPOBJ_DATA_VALID))
        {
            Status = AcpiDsGetBufferFieldArguments (ObjDesc);
            if (ACPI_FAILURE (Status))
            {
                return_ACPI_STATUS (Status);
            }
        }

        if (ReadWrite == ACPI_READ)
        {




            memcpy (Value,
                (ObjDesc->BufferField.BufferObj)->Buffer.Pointer +
                    ObjDesc->BufferField.BaseByteOffset +
                    FieldDatumByteOffset,
                ObjDesc->CommonField.AccessByteWidth);
        }
        else
        {




            memcpy ((ObjDesc->BufferField.BufferObj)->Buffer.Pointer +
                ObjDesc->BufferField.BaseByteOffset +
                FieldDatumByteOffset,
                Value, ObjDesc->CommonField.AccessByteWidth);
        }

        Status = AE_OK;
        break;

    case 130:




        if (AcpiExRegisterOverflow (ObjDesc->BankField.BankObj,
                (UINT64) ObjDesc->BankField.Value))
        {
            return_ACPI_STATUS (AE_AML_REGISTER_LIMIT);
        }





        Status = AcpiExInsertIntoField (ObjDesc->BankField.BankObj,
                    &ObjDesc->BankField.Value,
                    sizeof (ObjDesc->BankField.Value));
        if (ACPI_FAILURE (Status))
        {
            return_ACPI_STATUS (Status);
        }
    case 128:




        Status = AcpiExAccessRegion (
            ObjDesc, FieldDatumByteOffset, Value, ReadWrite);
        break;

    case 129:




        if (AcpiExRegisterOverflow (ObjDesc->IndexField.IndexObj,
                (UINT64) ObjDesc->IndexField.Value))
        {
            return_ACPI_STATUS (AE_AML_REGISTER_LIMIT);
        }



        FieldDatumByteOffset += ObjDesc->IndexField.Value;

        ACPI_DEBUG_PRINT ((ACPI_DB_BFIELD,
            "Write to Index Register: Value %8.8X\n",
            FieldDatumByteOffset));

        Status = AcpiExInsertIntoField (ObjDesc->IndexField.IndexObj,
            &FieldDatumByteOffset, sizeof (FieldDatumByteOffset));
        if (ACPI_FAILURE (Status))
        {
            return_ACPI_STATUS (Status);
        }

        if (ReadWrite == ACPI_READ)
        {


            ACPI_DEBUG_PRINT ((ACPI_DB_BFIELD,
                "Read from Data Register\n"));

            Status = AcpiExExtractFromField (
                ObjDesc->IndexField.DataObj, Value, sizeof (UINT64));
        }
        else
        {


            ACPI_DEBUG_PRINT ((ACPI_DB_BFIELD,
                "Write to Data Register: Value %8.8X%8.8X\n",
                ACPI_FORMAT_UINT64 (*Value)));

            Status = AcpiExInsertIntoField (
                ObjDesc->IndexField.DataObj, Value, sizeof (UINT64));
        }
        break;

    default:

        ACPI_ERROR ((AE_INFO, "Wrong object type in field I/O %u",
            ObjDesc->Common.Type));
        Status = AE_AML_INTERNAL;
        break;
    }

    if (ACPI_SUCCESS (Status))
    {
        if (ReadWrite == ACPI_READ)
        {
            ACPI_DEBUG_PRINT ((ACPI_DB_BFIELD,
                "Value Read %8.8X%8.8X, Width %u\n",
                ACPI_FORMAT_UINT64 (*Value),
                ObjDesc->CommonField.AccessByteWidth));
        }
        else
        {
            ACPI_DEBUG_PRINT ((ACPI_DB_BFIELD,
                "Value Written %8.8X%8.8X, Width %u\n",
                ACPI_FORMAT_UINT64 (*Value),
                ObjDesc->CommonField.AccessByteWidth));
        }
    }

    return_ACPI_STATUS (Status);
}
