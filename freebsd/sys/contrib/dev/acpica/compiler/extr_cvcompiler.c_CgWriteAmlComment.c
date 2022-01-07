
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int UINT8 ;
struct TYPE_8__ {char* Comment; struct TYPE_8__* Next; } ;
struct TYPE_6__ {scalar_t__ ParseOpcode; char* InlineComment; char* EndNodeComment; char* CloseBraceComment; TYPE_3__* EndBlkComment; TYPE_3__* CommentList; scalar_t__ FileChanged; scalar_t__ ParentFilename; scalar_t__ Filename; int ParseOpName; } ;
struct TYPE_7__ {TYPE_1__ Asl; } ;
typedef TYPE_2__ ACPI_PARSE_OBJECT ;
typedef TYPE_3__ ACPI_COMMENT_NODE ;


 int AcpiGbl_CaptureComments ;
 scalar_t__ AcpiUtStricmp (scalar_t__,scalar_t__) ;
 int CLOSE_BRACE_COMMENT ;
 int CgWriteOneAmlComment (TYPE_2__*,char*,int ) ;
 int CvDbgPrint (char*,char*,int ) ;
 int ENDBLK_COMMENT ;
 int ENDNODE_COMMENT ;
 scalar_t__ FALSE ;
 int FILENAME_COMMENT ;
 int FILE_SUFFIX_DISASSEMBLY ;
 char* FlGenerateFilename (scalar_t__,int ) ;
 int INCLUDE_COMMENT ;
 int INLINE_COMMENT ;
 int PARENTFILENAME_COMMENT ;
 scalar_t__ PARSEOP_DEFINITION_BLOCK ;
 scalar_t__ PARSEOP_INCLUDE ;
 int STANDARD_COMMENT ;

void
CgWriteAmlComment(
    ACPI_PARSE_OBJECT *Op)
{
    ACPI_COMMENT_NODE *Current;
    UINT8 CommentOption;
    char *NewFilename;
    char *ParentFilename;


    if ((Op->Asl.ParseOpcode == PARSEOP_DEFINITION_BLOCK) ||
         !AcpiGbl_CaptureComments)
    {
        return;
    }



    if (Op->Asl.FileChanged)
    {



        NewFilename =
            FlGenerateFilename (Op->Asl.Filename, FILE_SUFFIX_DISASSEMBLY);
        if (NewFilename)
        {
            CvDbgPrint ("Writing file comment, \"%s\" for %s\n",
                NewFilename, Op->Asl.ParseOpName);
        }

        CgWriteOneAmlComment(Op, NewFilename, FILENAME_COMMENT);

        if (Op->Asl.ParentFilename &&
            AcpiUtStricmp (Op->Asl.ParentFilename, Op->Asl.Filename))
        {
            ParentFilename = FlGenerateFilename (Op->Asl.ParentFilename,
                FILE_SUFFIX_DISASSEMBLY);
            CgWriteOneAmlComment(Op, ParentFilename, PARENTFILENAME_COMMENT);
        }



        Op->Asl.FileChanged = FALSE;
    }






    Current = Op->Asl.CommentList;
    if (Op->Asl.ParseOpcode == PARSEOP_INCLUDE)
    {
        CommentOption = INCLUDE_COMMENT;
    }
    else
    {
        CommentOption = STANDARD_COMMENT;
    }

    while (Current)
    {
        CgWriteOneAmlComment(Op, Current->Comment, CommentOption);
        Current = Current->Next;
    }

    Op->Asl.CommentList = ((void*)0);

    Current = Op->Asl.EndBlkComment;
    CommentOption = ENDBLK_COMMENT;
    while (Current)
    {
        CgWriteOneAmlComment(Op, Current->Comment, CommentOption);
        Current = Current->Next;
    }

    Op->Asl.EndBlkComment = ((void*)0);



    if (Op->Asl.InlineComment)
    {
        CommentOption = INLINE_COMMENT;
        CgWriteOneAmlComment(Op, Op->Asl.InlineComment, CommentOption);
        Op->Asl.InlineComment = ((void*)0);
    }

    if (Op->Asl.EndNodeComment)
    {
        CommentOption = ENDNODE_COMMENT;
        CgWriteOneAmlComment(Op, Op->Asl.EndNodeComment, CommentOption);
        Op->Asl.EndNodeComment = ((void*)0);
    }

    if (Op->Asl.CloseBraceComment)
    {
        CommentOption = CLOSE_BRACE_COMMENT;
        CgWriteOneAmlComment(Op, Op->Asl.CloseBraceComment, CommentOption);
        Op->Asl.CloseBraceComment = ((void*)0);
    }
}
