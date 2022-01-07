
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ UINT32 ;
typedef int BOOLEAN ;


 int FALSE ;
 int TRUE ;
 char* UtLocalCalloc (scalar_t__) ;
 scalar_t__ strlen (char*) ;

__attribute__((used)) static char *
DtNormalizeBuffer (
    char *Buffer,
    UINT32 *Count)
{
    char *NewBuffer;
    char *TmpBuffer;
    UINT32 BufferCount = 0;
    BOOLEAN Separator = TRUE;
    char c;


    NewBuffer = UtLocalCalloc (strlen (Buffer) + 1);
    TmpBuffer = NewBuffer;

    while ((c = *Buffer++))
    {
        switch (c)
        {


        case '[':
        case ']':
        case ' ':
        case ',':

            Separator = TRUE;
            break;

        default:

            if (Separator)
            {


                if (NewBuffer[0])
                {
                    *TmpBuffer++ = ' ';
                    BufferCount++;
                }

                Separator = FALSE;
            }

            *TmpBuffer++ = c;
            break;
        }
    }

    *Count = BufferCount + 1;
    return (NewBuffer);
}
