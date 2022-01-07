
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int UINT64 ;
typedef int UINT32 ;
struct TYPE_5__ {int BitLength; int AccessByteWidth; int StartFieldBitOffset; } ;
struct TYPE_6__ {TYPE_1__ CommonField; } ;
typedef int ACPI_STATUS ;
typedef TYPE_2__ ACPI_OPERAND_OBJECT ;


 int ACPI_ERROR (int ) ;
 scalar_t__ ACPI_FAILURE (int ) ;
 int ACPI_FUNCTION_TRACE (int ) ;
 int ACPI_INTEGER_BIT_SIZE ;
 int ACPI_MASK_BITS_ABOVE (int) ;
 int ACPI_MIN (int,int) ;
 int ACPI_MUL_8 (int) ;
 int ACPI_READ ;
 int ACPI_ROUND_BITS_UP_TO_BYTES (int) ;
 int ACPI_ROUND_UP_TO (int,int) ;
 int AE_BUFFER_OVERFLOW ;
 int AE_INFO ;
 int AE_OK ;
 int AcpiExFieldDatumIo (TYPE_2__*,int,int*,int ) ;
 int ExExtractFromField ;
 int memcpy (char*,int*,int) ;
 int memset (void*,int ,int) ;
 int return_ACPI_STATUS (int ) ;

ACPI_STATUS
AcpiExExtractFromField (
    ACPI_OPERAND_OBJECT *ObjDesc,
    void *Buffer,
    UINT32 BufferLength)
{
    ACPI_STATUS Status;
    UINT64 RawDatum;
    UINT64 MergedDatum;
    UINT32 FieldOffset = 0;
    UINT32 BufferOffset = 0;
    UINT32 BufferTailBits;
    UINT32 DatumCount;
    UINT32 FieldDatumCount;
    UINT32 AccessBitWidth;
    UINT32 i;


    ACPI_FUNCTION_TRACE (ExExtractFromField);




    if (BufferLength <
        ACPI_ROUND_BITS_UP_TO_BYTES (ObjDesc->CommonField.BitLength))
    {
        ACPI_ERROR ((AE_INFO,
            "Field size %u (bits) is too large for buffer (%u)",
            ObjDesc->CommonField.BitLength, BufferLength));

        return_ACPI_STATUS (AE_BUFFER_OVERFLOW);
    }

    memset (Buffer, 0, BufferLength);
    AccessBitWidth = ACPI_MUL_8 (ObjDesc->CommonField.AccessByteWidth);



    if ((ObjDesc->CommonField.StartFieldBitOffset == 0) &&
        (ObjDesc->CommonField.BitLength == AccessBitWidth))
    {
        if (BufferLength >= sizeof (UINT64))
        {
            Status = AcpiExFieldDatumIo (ObjDesc, 0, Buffer, ACPI_READ);
        }
        else
        {


            Status = AcpiExFieldDatumIo (ObjDesc, 0, &RawDatum, ACPI_READ);
            memcpy (Buffer, &RawDatum, BufferLength);
        }

        return_ACPI_STATUS (Status);
    }





    if (ObjDesc->CommonField.AccessByteWidth > sizeof (UINT64))
    {
        ObjDesc->CommonField.AccessByteWidth = sizeof (UINT64);
        AccessBitWidth = sizeof (UINT64) * 8;
    }



    DatumCount = ACPI_ROUND_UP_TO (
        ObjDesc->CommonField.BitLength, AccessBitWidth);

    FieldDatumCount = ACPI_ROUND_UP_TO (
        ObjDesc->CommonField.BitLength +
        ObjDesc->CommonField.StartFieldBitOffset, AccessBitWidth);



    Status = AcpiExFieldDatumIo (ObjDesc, FieldOffset, &RawDatum, ACPI_READ);
    if (ACPI_FAILURE (Status))
    {
        return_ACPI_STATUS (Status);
    }
    MergedDatum = RawDatum >> ObjDesc->CommonField.StartFieldBitOffset;



    for (i = 1; i < FieldDatumCount; i++)
    {


        FieldOffset += ObjDesc->CommonField.AccessByteWidth;
        Status = AcpiExFieldDatumIo (
            ObjDesc, FieldOffset, &RawDatum, ACPI_READ);
        if (ACPI_FAILURE (Status))
        {
            return_ACPI_STATUS (Status);
        }
        if (AccessBitWidth - ObjDesc->CommonField.StartFieldBitOffset <
            ACPI_INTEGER_BIT_SIZE)
        {
            MergedDatum |= RawDatum <<
                (AccessBitWidth - ObjDesc->CommonField.StartFieldBitOffset);
        }

        if (i == DatumCount)
        {
            break;
        }



        memcpy (((char *) Buffer) + BufferOffset, &MergedDatum,
            ACPI_MIN(ObjDesc->CommonField.AccessByteWidth,
                BufferLength - BufferOffset));

        BufferOffset += ObjDesc->CommonField.AccessByteWidth;
        MergedDatum = RawDatum >> ObjDesc->CommonField.StartFieldBitOffset;
    }



    BufferTailBits = ObjDesc->CommonField.BitLength % AccessBitWidth;
    if (BufferTailBits)
    {
        MergedDatum &= ACPI_MASK_BITS_ABOVE (BufferTailBits);
    }



    memcpy (((char *) Buffer) + BufferOffset, &MergedDatum,
        ACPI_MIN(ObjDesc->CommonField.AccessByteWidth,
            BufferLength - BufferOffset));

    return_ACPI_STATUS (AE_OK);
}
