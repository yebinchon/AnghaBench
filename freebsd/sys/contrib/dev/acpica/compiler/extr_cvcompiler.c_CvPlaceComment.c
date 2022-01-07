
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int UINT8 ;
struct TYPE_6__ {TYPE_2__* ParsingParenBraceNode; TYPE_2__* LatestParseOp; } ;
struct TYPE_4__ {char* CloseBraceComment; void* EndNodeComment; void* InlineComment; } ;
struct TYPE_5__ {TYPE_1__ Asl; } ;
typedef TYPE_2__ ACPI_PARSE_OBJECT ;







 TYPE_3__ AslGbl_CommentState ;
 void* AslGbl_InlineCommentBuffer ;
 int CvAddToCommentList (char*) ;
 void* CvAppendInlineComment (void*,char*) ;
 int CvDbgPrint (char*,char*,int) ;

void
CvPlaceComment(
    UINT8 Type,
    char *CommentString)
{
    ACPI_PARSE_OBJECT *LatestParseNode;
    ACPI_PARSE_OBJECT *ParenBraceNode;


    LatestParseNode = AslGbl_CommentState.LatestParseOp;
    ParenBraceNode = AslGbl_CommentState.ParsingParenBraceNode;
    CvDbgPrint ("Placing comment %s for type %d\n", CommentString, Type);

    switch (Type)
    {
    case 128:

        CvAddToCommentList (CommentString);
        break;

    case 132:

        LatestParseNode->Asl.InlineComment =
            CvAppendInlineComment (LatestParseNode->Asl.InlineComment,
            CommentString);
        break;

    case 129:

        AslGbl_InlineCommentBuffer =
            CvAppendInlineComment(AslGbl_InlineCommentBuffer,
            CommentString);
        break;

    case 130:

        if (ParenBraceNode)
        {
            ParenBraceNode->Asl.EndNodeComment =
                CvAppendInlineComment (ParenBraceNode->Asl.EndNodeComment,
                CommentString);
        }
        else
        {
            LatestParseNode->Asl.EndNodeComment =
                CvAppendInlineComment (LatestParseNode->Asl.EndNodeComment,
                CommentString);
        }
        break;

    case 131:

        LatestParseNode->Asl.CloseBraceComment = CommentString;
        break;

    default:

        break;
    }
}
