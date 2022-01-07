
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {void* CommentType; int * ParsingParenBraceNode; scalar_t__ SpacesBefore; } ;


 void* ASLCOMMENT_INLINE ;
 void* ASL_COMMENT_CLOSE_BRACE ;
 void* ASL_COMMENT_CLOSE_PAREN ;
 void* ASL_COMMENT_OPEN_PAREN ;
 void* ASL_COMMENT_STANDARD ;
 TYPE_1__ AslGbl_CommentState ;
 int CvDbgPrint (char*) ;

void
CvProcessCommentState (
    char Input)
{

    if (Input != ' ')
    {
        AslGbl_CommentState.SpacesBefore = 0;
    }

    switch (Input)
    {
    case '\n':

        AslGbl_CommentState.CommentType = ASL_COMMENT_STANDARD;
        break;

    case ' ':



        AslGbl_CommentState.SpacesBefore++;
        break;

    case '(':

        AslGbl_CommentState.CommentType = ASL_COMMENT_OPEN_PAREN;
        break;

    case ')':

        AslGbl_CommentState.CommentType = ASL_COMMENT_CLOSE_PAREN;
        break;

    case '{':

        AslGbl_CommentState.CommentType = ASL_COMMENT_STANDARD;
        AslGbl_CommentState.ParsingParenBraceNode = ((void*)0);
        CvDbgPrint ("End Parsing paren/Brace node!\n");
        break;

    case '}':

        AslGbl_CommentState.CommentType = ASL_COMMENT_CLOSE_BRACE;
        break;

    case ',':

        AslGbl_CommentState.CommentType = ASLCOMMENT_INLINE;
        break;

    default:

        AslGbl_CommentState.CommentType = ASLCOMMENT_INLINE;
        break;
    }
}
