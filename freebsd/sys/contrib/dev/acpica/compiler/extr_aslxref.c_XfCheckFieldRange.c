
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ UINT32 ;
typedef int ACPI_PARSE_OBJECT ;


 scalar_t__ ACPI_ROUND_UP (scalar_t__,scalar_t__) ;
 int ASL_ERROR ;
 int ASL_MSG_FIELD_UNIT_ACCESS_WIDTH ;
 int ASL_MSG_FIELD_UNIT_OFFSET ;
 int AslError (int ,int ,int *,int *) ;

__attribute__((used)) static void
XfCheckFieldRange (
    ACPI_PARSE_OBJECT *Op,
    UINT32 RegionBitLength,
    UINT32 FieldBitOffset,
    UINT32 FieldBitLength,
    UINT32 AccessBitWidth)
{
    UINT32 FieldEndBitOffset;







    FieldEndBitOffset = FieldBitOffset + FieldBitLength;

    if (FieldEndBitOffset > RegionBitLength)
    {


        AslError (ASL_ERROR, ASL_MSG_FIELD_UNIT_OFFSET, Op, ((void*)0));
        return;
    }





    FieldEndBitOffset = ACPI_ROUND_UP (FieldEndBitOffset, AccessBitWidth);

    if (FieldEndBitOffset > RegionBitLength)
    {


        AslError (ASL_ERROR, ASL_MSG_FIELD_UNIT_ACCESS_WIDTH, Op, ((void*)0));
    }
}
