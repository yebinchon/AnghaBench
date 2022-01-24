#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  void* UINT32 ;
struct TYPE_4__ {char* Name; char* Value; void* StringLength; void* Column; void* NameColumn; void* ByteOffset; void* Line; } ;
typedef  TYPE_1__ DT_FIELD ;
typedef  scalar_t__ BOOLEAN ;
typedef  int /*<<< orphan*/  ACPI_STATUS ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 void* FUNC1 (char*,char*) ; 
 int /*<<< orphan*/  ACPI_RAW_TABLE_DATA_HEADER ; 
 int /*<<< orphan*/  AE_NOT_FOUND ; 
 int /*<<< orphan*/  AE_OK ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 char* FUNC3 (char*) ; 
 scalar_t__ FALSE ; 
 scalar_t__ TRUE ; 
 TYPE_1__* FUNC4 () ; 
 char* FUNC5 (void*) ; 
 char* FUNC6 (char*,char) ; 
 int /*<<< orphan*/  FUNC7 (char*,char*,void*) ; 
 scalar_t__ FUNC8 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static ACPI_STATUS
FUNC9 (
    char                    *LineBuffer,
    UINT32                  Line,
    UINT32                  Offset)
{
    char                    *Start;
    char                    *End;
    char                    *TmpName;
    char                    *TmpValue;
    char                    *Name;
    char                    *Value;
    char                    *Colon;
    UINT32                  Length;
    DT_FIELD                *Field;
    UINT32                  Column;
    UINT32                  NameColumn;
    BOOLEAN                 IsNullString = FALSE;


    if (!LineBuffer)
    {
        return (AE_OK);
    }

    /* All lines after "Raw Table Data" are ignored */

    if (FUNC8 (LineBuffer, ACPI_RAW_TABLE_DATA_HEADER))
    {
        return (AE_NOT_FOUND);
    }

    Colon = FUNC6 (LineBuffer, ':');
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
            /* Found left bracket, go to the right bracket */

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

    /*
     * There are two column values. One for the field name,
     * and one for the field value.
     */
    Column = FUNC1 (Colon, LineBuffer) + 3;
    NameColumn = FUNC1 (Start, LineBuffer) + 1;

    Length = FUNC1 (End, Start);

    TmpName = FUNC5 (Length + 1);
    FUNC7 (TmpName, Start, Length);
    Name = FUNC3 (TmpName);
    FUNC0 (TmpName);

    Start = End = (Colon + 1);
    while (*End)
    {
        /* Found left quotation, go to the right quotation and break */

        if (*End == '"')
        {
            End++;

            /* Check for an explicit null string */

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

        /*
         * Special "comment" fields at line end, ignore them.
         * Note: normal slash-slash and slash-asterisk comments are
         * stripped already by the DtGetNextLine parser.
         *
         * TBD: Perhaps DtGetNextLine should parse the following type
         * of comments also.
         */
        if (*End == '[')
        {
            End--;
            break;
        }

        End++;
    }

    Length = FUNC1 (End, Start);
    TmpValue = FUNC5 (Length + 1);

    FUNC7 (TmpValue, Start, Length);
    Value = FUNC3 (TmpValue);
    FUNC0 (TmpValue);

    /* Create a new field object only if we have a valid value field */

    if ((Value && *Value) || IsNullString)
    {
        Field = FUNC4 ();
        Field->Name = Name;
        Field->Value = Value;
        Field->Line = Line;
        Field->ByteOffset = Offset;
        Field->NameColumn = NameColumn;
        Field->Column = Column;
        Field->StringLength = Length;

        FUNC2 (Field);
    }
    /* Else -- Ignore this field, it has no valid data */

    return (AE_OK);
}