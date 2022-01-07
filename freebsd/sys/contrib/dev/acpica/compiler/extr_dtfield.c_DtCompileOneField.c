
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_1__ ;


typedef int UINT8 ;
typedef int UINT32 ;
struct TYPE_9__ {int Value; } ;
typedef TYPE_1__ DT_FIELD ;
typedef int ACPI_STATUS ;


 int ACPI_SUCCESS (int ) ;
 int ASL_MSG_COMPILER_INTERNAL ;






 int DtCompileBuffer (int*,int ,TYPE_1__*,int ) ;
 int DtCompileInteger (int*,TYPE_1__*,int ,int) ;
 int DtCompileString (int*,TYPE_1__*,int ) ;
 int DtCompileUnicode (int*,TYPE_1__*,int ) ;
 int DtCompileUuid (int*,TYPE_1__*,int ) ;
 int DtFatal (int ,TYPE_1__*,char*) ;

void
DtCompileOneField (
    UINT8 *Buffer,
    DT_FIELD *Field,
    UINT32 ByteLength,
    UINT8 Type,
    UINT8 Flags)
{
    ACPI_STATUS Status;


    switch (Type)
    {
    case 131:

        DtCompileInteger (Buffer, Field, ByteLength, Flags);
        break;

    case 130:

        DtCompileString (Buffer, Field, ByteLength);
        break;

    case 128:

        Status = DtCompileUuid (Buffer, Field, ByteLength);
        if (ACPI_SUCCESS (Status))
        {
            break;
        }



    case 133:

        DtCompileBuffer (Buffer, Field->Value, Field, ByteLength);
        break;

    case 129:

        DtCompileUnicode (Buffer, Field, ByteLength);
        break;

    case 132:

        break;

    default:

        DtFatal (ASL_MSG_COMPILER_INTERNAL, Field, "Invalid field type");
        break;
    }
}
