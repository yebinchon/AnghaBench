
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int UINT64 ;
struct TYPE_3__ {int SpacesBefore; scalar_t__ CommentType; scalar_t__ CaptureComments; } ;
typedef scalar_t__ BOOLEAN ;
typedef TYPE_1__ ASL_COMMENT_STATE ;


 scalar_t__ ASL_COMMENT_STANDARD ;
 scalar_t__ AcpiGbl_CaptureComments ;
 char* AslGbl_MsgBuffer ;
 int CvAddToCommentList (char*) ;
 int CvDbgPrint (char*,...) ;
 int CvPlaceComment (scalar_t__,char*) ;
 scalar_t__ FALSE ;
 scalar_t__ TRUE ;
 char* UtLocalCacheCalloc (int) ;
 int strcat (char*,char*) ;
 int strcpy (char*,char*) ;
 int strlen (char*) ;
 char* strtok (char*,char*) ;

void
CvProcessComment (
    ASL_COMMENT_STATE CurrentState,
    char *StringBuffer,
    int c1)
{
    UINT64 i;
    char *LineToken;
    char *FinalLineToken;
    BOOLEAN CharStart;
    char *CommentString;
    char *FinalCommentString;


    if (AcpiGbl_CaptureComments && CurrentState.CaptureComments)
    {
        *StringBuffer = (char) c1;
        ++StringBuffer;
        *StringBuffer = 0;

        CvDbgPrint ("Multi-line comment\n");
        CommentString = UtLocalCacheCalloc (strlen (AslGbl_MsgBuffer) + 1);
        strcpy (CommentString, AslGbl_MsgBuffer);

        CvDbgPrint ("CommentString: %s\n", CommentString);







        LineToken = strtok (CommentString, "\n");

        if (LineToken)
        {
            FinalLineToken = UtLocalCacheCalloc (strlen (LineToken) + 1);
            strcpy (FinalLineToken, LineToken);



            if (FinalLineToken[strlen (FinalLineToken) - 1] == 0x0D)
            {
                FinalLineToken[strlen(FinalLineToken)-1] = 0;
            }

            CvAddToCommentList (FinalLineToken);
            LineToken = strtok (((void*)0), "\n");
            while (LineToken != ((void*)0))
            {





                CharStart = FALSE;
                for (i = 0; (i < (strlen (LineToken) + 1)) && !CharStart; i++)
                {
                    if (LineToken[i] != ' ' && LineToken[i] != '\t')
                    {
                        CharStart = TRUE;
                        LineToken += i-1;
                        LineToken [0] = ' ';
                    }
                }

                FinalLineToken = UtLocalCacheCalloc (strlen (LineToken) + 1);
                strcat (FinalLineToken, LineToken);



                if (FinalLineToken[strlen (FinalLineToken) - 1] == 0x0D)
                {
                    FinalLineToken[strlen(FinalLineToken) - 1] = 0;
                }

                CvAddToCommentList (FinalLineToken);
                LineToken = strtok (((void*)0),"\n");
            }
        }
        else
        {





            FinalCommentString =
                UtLocalCacheCalloc (strlen (CommentString) +
                CurrentState.SpacesBefore + 1);

            for (i = 0; (CurrentState.CommentType != ASL_COMMENT_STANDARD) &&
                (i < CurrentState.SpacesBefore); i++)
            {
                 FinalCommentString[i] = ' ';
            }

            strcat (FinalCommentString, CommentString);
            CvPlaceComment (CurrentState.CommentType, FinalCommentString);
        }
    }
}
