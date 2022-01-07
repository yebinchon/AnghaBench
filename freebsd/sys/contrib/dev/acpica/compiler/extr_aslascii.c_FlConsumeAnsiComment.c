
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef char UINT8 ;
struct TYPE_3__ {int Offset; int Line; } ;
typedef int FILE ;
typedef scalar_t__ BOOLEAN ;
typedef TYPE_1__ ASL_FILE_STATUS ;


 scalar_t__ FALSE ;
 scalar_t__ TRUE ;
 int fread (char*,int,int,int *) ;

__attribute__((used)) static void
FlConsumeAnsiComment (
    FILE *Handle,
    ASL_FILE_STATUS *Status)
{
    UINT8 Byte;
    BOOLEAN ClosingComment = FALSE;


    while (fread (&Byte, 1, 1, Handle) == 1)
    {


        if (ClosingComment)
        {
            if (Byte == '/')
            {
                Status->Offset++;
                return;
            }

            if (Byte != '*')
            {


                ClosingComment = FALSE;
            }
        }
        else if (Byte == '*')
        {
            ClosingComment = TRUE;
        }



        if (Byte == 0x0A)
        {
            Status->Line++;
        }

        Status->Offset++;
    }
}
