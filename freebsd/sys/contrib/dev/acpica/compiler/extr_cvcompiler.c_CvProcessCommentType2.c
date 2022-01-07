
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t UINT32 ;
struct TYPE_3__ {int SpacesBefore; int CommentType; scalar_t__ CaptureComments; } ;
typedef TYPE_1__ ASL_COMMENT_STATE ;


 scalar_t__ AcpiGbl_CaptureComments ;
 char* AslGbl_MsgBuffer ;
 int CvDbgPrint (char*) ;
 int CvPlaceComment (int,char*) ;
 char* UtLocalCacheCalloc (int) ;
 int strcat (char*,char*) ;
 int strcpy (char*,char*) ;
 int strlen (char*) ;

void
CvProcessCommentType2 (
    ASL_COMMENT_STATE CurrentState,
    char *StringBuffer)
{
    UINT32 i;
    char *CommentString;
    char *FinalCommentString;


    if (AcpiGbl_CaptureComments && CurrentState.CaptureComments)
    {
        *StringBuffer = 0;
        CvDbgPrint ("Single-line comment\n");
        CommentString = UtLocalCacheCalloc (strlen (AslGbl_MsgBuffer) + 1);
        strcpy (CommentString, AslGbl_MsgBuffer);
        FinalCommentString = UtLocalCacheCalloc (CurrentState.SpacesBefore +
            strlen (CommentString) + 3 + 1);

        for (i = 0; (CurrentState.CommentType != 1) &&
            (i < CurrentState.SpacesBefore); i++)
        {
            FinalCommentString[i] = ' ';
        }

        strcat (FinalCommentString, CommentString);



        strcat (FinalCommentString, " */");
        FinalCommentString [CurrentState.SpacesBefore +
            strlen (CommentString) + 3] = 0;



        if (FinalCommentString[strlen (FinalCommentString) - 1] == 0x0D)
        {
            FinalCommentString[strlen(FinalCommentString) - 1] = 0;
        }

        CvPlaceComment (CurrentState.CommentType, FinalCommentString);
    }
}
