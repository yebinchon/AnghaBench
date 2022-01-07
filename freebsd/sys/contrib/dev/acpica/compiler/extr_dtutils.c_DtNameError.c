
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int UINT8 ;
typedef int UINT16 ;
struct TYPE_5__ {int Filename; } ;
struct TYPE_4__ {int NameColumn; int ByteOffset; int Line; } ;
typedef TYPE_1__ DT_FIELD ;


 size_t ASL_FILE_INPUT ;


 int AslCommonError (int,int ,int ,int ,int ,int ,int ,char*) ;
 TYPE_3__* AslGbl_Files ;
 int AslGbl_WarningLevel ;

void
DtNameError (
    UINT8 Level,
    UINT16 MessageId,
    DT_FIELD *FieldObject,
    char *ExtraMessage)
{

    switch (Level)
    {
    case 129:
    case 128:

        if (AslGbl_WarningLevel < Level)
        {
            return;
        }
        break;

    default:

        break;
    }

    if (FieldObject)
    {
        AslCommonError (Level, MessageId,
            FieldObject->Line,
            FieldObject->Line,
            FieldObject->ByteOffset,
            FieldObject->NameColumn,
            AslGbl_Files[ASL_FILE_INPUT].Filename, ExtraMessage);
    }
    else
    {
        AslCommonError (Level, MessageId, 0,
            0, 0, 0, 0, ExtraMessage);
    }
}
