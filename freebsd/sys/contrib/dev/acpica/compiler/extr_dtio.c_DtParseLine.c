
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef void* UINT32 ;
struct TYPE_4__ {char* Name; char* Value; void* StringLength; void* Column; void* NameColumn; void* ByteOffset; void* Line; } ;
typedef TYPE_1__ DT_FIELD ;
typedef scalar_t__ BOOLEAN ;
typedef int ACPI_STATUS ;


 int ACPI_FREE (char*) ;
 void* ACPI_PTR_DIFF (char*,char*) ;
 int ACPI_RAW_TABLE_DATA_HEADER ;
 int AE_NOT_FOUND ;
 int AE_OK ;
 int DtLinkField (TYPE_1__*) ;
 char* DtTrim (char*) ;
 scalar_t__ FALSE ;
 scalar_t__ TRUE ;
 TYPE_1__* UtFieldCacheCalloc () ;
 char* UtLocalCalloc (void*) ;
 char* strchr (char*,char) ;
 int strncpy (char*,char*,void*) ;
 scalar_t__ strstr (char*,int ) ;

__attribute__((used)) static ACPI_STATUS
DtParseLine (
    char *LineBuffer,
    UINT32 Line,
    UINT32 Offset)
{
    char *Start;
    char *End;
    char *TmpName;
    char *TmpValue;
    char *Name;
    char *Value;
    char *Colon;
    UINT32 Length;
    DT_FIELD *Field;
    UINT32 Column;
    UINT32 NameColumn;
    BOOLEAN IsNullString = FALSE;


    if (!LineBuffer)
    {
        return (AE_OK);
    }



    if (strstr (LineBuffer, ACPI_RAW_TABLE_DATA_HEADER))
    {
        return (AE_NOT_FOUND);
    }

    Colon = strchr (LineBuffer, ':');
    if (!Colon)
    {
        return (AE_OK);
    }

    Start = LineBuffer;
    End = Colon;

    while (Start < Colon)
    {
        if (*Start == '[')
        {


            while (Start < Colon && *Start != ']')
            {
                Start++;
            }
        }
        else if (*Start != ' ')
        {
            break;
        }

        Start++;
    }





    Column = ACPI_PTR_DIFF (Colon, LineBuffer) + 3;
    NameColumn = ACPI_PTR_DIFF (Start, LineBuffer) + 1;

    Length = ACPI_PTR_DIFF (End, Start);

    TmpName = UtLocalCalloc (Length + 1);
    strncpy (TmpName, Start, Length);
    Name = DtTrim (TmpName);
    ACPI_FREE (TmpName);

    Start = End = (Colon + 1);
    while (*End)
    {


        if (*End == '"')
        {
            End++;



            if (*End == '"')
            {
                IsNullString = TRUE;
            }
            while (*End && (*End != '"'))
            {
                End++;
            }

            End++;
            break;
        }
        if (*End == '[')
        {
            End--;
            break;
        }

        End++;
    }

    Length = ACPI_PTR_DIFF (End, Start);
    TmpValue = UtLocalCalloc (Length + 1);

    strncpy (TmpValue, Start, Length);
    Value = DtTrim (TmpValue);
    ACPI_FREE (TmpValue);



    if ((Value && *Value) || IsNullString)
    {
        Field = UtFieldCacheCalloc ();
        Field->Name = Name;
        Field->Value = Value;
        Field->Line = Line;
        Field->ByteOffset = Offset;
        Field->NameColumn = NameColumn;
        Field->Column = Column;
        Field->StringLength = Length;

        DtLinkField (Field);
    }


    return (AE_OK);
}
