
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int UINT8 ;
typedef int UINT32 ;
struct TYPE_4__ {char* InlineComment; char* EndNodeComment; char* NameComment; char* CloseBraceComment; int * EndBlkComment; int * CommentList; } ;
struct TYPE_5__ {TYPE_1__ Common; } ;
typedef scalar_t__ BOOLEAN ;
typedef TYPE_2__ ACPI_PARSE_OBJECT ;
 int AcpiDmIndent (int ) ;
 int AcpiOsPrintf (char*,...) ;
 int CvListIsSingleton (int *) ;
 int CvPrintOneCommentList (int *,int ) ;
 scalar_t__ FALSE ;
 scalar_t__ TRUE ;

void
CvPrintOneCommentType (
    ACPI_PARSE_OBJECT *Op,
    UINT8 CommentType,
    char* EndStr,
    UINT32 Level)
{
    BOOLEAN CommentExists = FALSE;
    char **CommentToPrint = ((void*)0);


    switch (CommentType)
    {
    case 129:

        if (CvListIsSingleton (Op->Common.CommentList))
        {
            CvPrintOneCommentList (Op->Common.CommentList, Level);
            AcpiOsPrintf ("\n");
        }
        else
        {
            CvPrintOneCommentList (Op->Common.CommentList, Level);
        }

        Op->Common.CommentList = ((void*)0);
        return;

    case 131:

        if (Op->Common.EndBlkComment)
        {
            CvPrintOneCommentList (Op->Common.EndBlkComment, Level);
            Op->Common.EndBlkComment = ((void*)0);
            AcpiDmIndent(Level);
        }
        return;

    case 133:

        CommentToPrint = &Op->Common.InlineComment;
        break;

    case 130:

        CommentToPrint = &Op->Common.EndNodeComment;
        break;

    case 128:

        CommentToPrint = &Op->Common.NameComment;
        break;

    case 132:

        CommentToPrint = &Op->Common.CloseBraceComment;
        break;

    default:
        return;
    }

    if (*CommentToPrint)
    {
        CommentExists = TRUE;
        AcpiOsPrintf ("%s", *CommentToPrint);
        *CommentToPrint = ((void*)0);
    }

    if (CommentExists && EndStr)
    {
        AcpiOsPrintf ("%s", EndStr);
    }
}
