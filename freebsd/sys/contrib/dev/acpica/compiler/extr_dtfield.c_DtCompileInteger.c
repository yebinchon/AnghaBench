
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int UINT8 ;
typedef int UINT64 ;
typedef int UINT32 ;
struct TYPE_6__ {int Name; } ;
typedef TYPE_1__ DT_FIELD ;
typedef int ACPI_STATUS ;


 scalar_t__ ACPI_FAILURE (int ) ;
 int ACPI_FORMAT_UINT64 (int) ;
 int ASL_ERROR ;
 int ASL_MSG_COMPILER_INTERNAL ;
 int ASL_MSG_INTEGER_SIZE ;
 int ASL_MSG_RESERVED_VALUE ;
 int ASL_MSG_ZERO_VALUE ;
 int ASL_WARNING ;
 char* AslGbl_MsgBuffer ;
 int DT_NON_ZERO ;
 int DtError (int ,int ,TYPE_1__*,char*) ;
 int DtFatal (int ,TYPE_1__*,char*) ;
 int DtResolveIntegerExpression (TYPE_1__*,int*) ;
 int memcpy (int*,int*,int) ;
 int sprintf (char*,char*,int,int) ;
 int strcmp (int ,char*) ;

void
DtCompileInteger (
    UINT8 *Buffer,
    DT_FIELD *Field,
    UINT32 ByteLength,
    UINT8 Flags)
{
    UINT64 Value;
    UINT64 MaxValue;
    ACPI_STATUS Status;




    if ((ByteLength > 8) || (ByteLength == 0))
    {
        DtFatal (ASL_MSG_COMPILER_INTERNAL, Field,
            "Invalid internal Byte length");
        return;
    }



    Status = DtResolveIntegerExpression (Field, &Value);
    if (ACPI_FAILURE (Status))
    {
        return;
    }
    if (!strcmp (Field->Name, "Reserved"))
    {
        if (Flags & DT_NON_ZERO)
        {
            if (Value != 1)
            {
                DtError (ASL_WARNING, ASL_MSG_RESERVED_VALUE, Field,
                    "Must be one, setting to one");
                Value = 1;
            }
        }
        else if (Value != 0)
        {
            DtError (ASL_WARNING, ASL_MSG_RESERVED_VALUE, Field,
                "Must be zero, setting to zero");
            Value = 0;
        }
    }



    else if ((Flags & DT_NON_ZERO) && (Value == 0))
    {
        DtError (ASL_ERROR, ASL_MSG_ZERO_VALUE, Field, ((void*)0));
    }





    MaxValue = ((UINT64) (-1)) >> (64 - (ByteLength * 8));



    if (Value > MaxValue)
    {
        sprintf (AslGbl_MsgBuffer, "%8.8X%8.8X - max %u bytes",
            ACPI_FORMAT_UINT64 (Value), ByteLength);
        DtError (ASL_ERROR, ASL_MSG_INTEGER_SIZE, Field, AslGbl_MsgBuffer);
    }

    memcpy (Buffer, &Value, ByteLength);
    return;
}
