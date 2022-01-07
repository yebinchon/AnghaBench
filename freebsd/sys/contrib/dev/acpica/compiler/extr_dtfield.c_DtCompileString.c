
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int UINT8 ;
typedef scalar_t__ UINT32 ;
struct TYPE_4__ {char* Value; } ;
typedef TYPE_1__ DT_FIELD ;


 int ASL_ERROR ;
 int ASL_MSG_STRING_LENGTH ;
 int AslGbl_MsgBuffer ;
 int DtError (int ,int ,TYPE_1__*,int ) ;
 int memcpy (int *,char*,scalar_t__) ;
 int sprintf (int ,char*,scalar_t__,scalar_t__,char*) ;
 scalar_t__ strlen (char*) ;

__attribute__((used)) static void
DtCompileString (
    UINT8 *Buffer,
    DT_FIELD *Field,
    UINT32 ByteLength)
{
    UINT32 Length;


    Length = strlen (Field->Value);



    if (Length > ByteLength)
    {
        sprintf (AslGbl_MsgBuffer,
            "Maximum %u characters, found %u characters [%s]",
            ByteLength, Length, Field->Value);
        DtError (ASL_ERROR, ASL_MSG_STRING_LENGTH, Field, AslGbl_MsgBuffer);
        Length = ByteLength;
    }

    memcpy (Buffer, Field->Value, Length);
}
