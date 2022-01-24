#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  UINT8 ;
struct TYPE_8__ {char* Comment; struct TYPE_8__* Next; } ;
struct TYPE_6__ {scalar_t__ ParseOpcode; char* InlineComment; char* EndNodeComment; char* CloseBraceComment; TYPE_3__* EndBlkComment; TYPE_3__* CommentList; scalar_t__ FileChanged; scalar_t__ ParentFilename; scalar_t__ Filename; int /*<<< orphan*/  ParseOpName; } ;
struct TYPE_7__ {TYPE_1__ Asl; } ;
typedef  TYPE_2__ ACPI_PARSE_OBJECT ;
typedef  TYPE_3__ ACPI_COMMENT_NODE ;

/* Variables and functions */
 int /*<<< orphan*/  AcpiGbl_CaptureComments ; 
 scalar_t__ FUNC0 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  CLOSE_BRACE_COMMENT ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ENDBLK_COMMENT ; 
 int /*<<< orphan*/  ENDNODE_COMMENT ; 
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  FILENAME_COMMENT ; 
 int /*<<< orphan*/  FILE_SUFFIX_DISASSEMBLY ; 
 char* FUNC3 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  INCLUDE_COMMENT ; 
 int /*<<< orphan*/  INLINE_COMMENT ; 
 int /*<<< orphan*/  PARENTFILENAME_COMMENT ; 
 scalar_t__ PARSEOP_DEFINITION_BLOCK ; 
 scalar_t__ PARSEOP_INCLUDE ; 
 int /*<<< orphan*/  STANDARD_COMMENT ; 

void
FUNC4(
    ACPI_PARSE_OBJECT       *Op)
{
    ACPI_COMMENT_NODE       *Current;
    UINT8                   CommentOption;
    char                    *NewFilename;
    char                    *ParentFilename;


    if ((Op->Asl.ParseOpcode == PARSEOP_DEFINITION_BLOCK) ||
         !AcpiGbl_CaptureComments)
    {
        return;
    }

    /* Print out the filename comment if needed */

    if (Op->Asl.FileChanged)
    {

        /* First, print the file name comment after changing .asl to .dsl */

        NewFilename =
            FUNC3 (Op->Asl.Filename, FILE_SUFFIX_DISASSEMBLY);
        if (NewFilename)
        {
            FUNC2 ("Writing file comment, \"%s\" for %s\n",
                NewFilename, Op->Asl.ParseOpName);
        }

        FUNC1(Op, NewFilename, FILENAME_COMMENT);

        if (Op->Asl.ParentFilename &&
            FUNC0 (Op->Asl.ParentFilename, Op->Asl.Filename))
        {
            ParentFilename = FUNC3 (Op->Asl.ParentFilename,
                FILE_SUFFIX_DISASSEMBLY);
            FUNC1(Op, ParentFilename, PARENTFILENAME_COMMENT);
        }

        /* Prevent multiple writes of the same comment */

        Op->Asl.FileChanged = FALSE;
    }

    /*
     * Regular comments are stored in a list of comments within an Op.
     * If there is a such list in this node, print out the comment
     * as byte code.
     */
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
        FUNC1(Op, Current->Comment, CommentOption);
        Current = Current->Next;
    }

    Op->Asl.CommentList = NULL;

    Current = Op->Asl.EndBlkComment;
    CommentOption = ENDBLK_COMMENT;
    while (Current)
    {
        FUNC1(Op, Current->Comment, CommentOption);
        Current = Current->Next;
    }

    Op->Asl.EndBlkComment = NULL;

    /* Print any Inline comments associated with this node */

    if (Op->Asl.InlineComment)
    {
        CommentOption = INLINE_COMMENT;
        FUNC1(Op, Op->Asl.InlineComment, CommentOption);
        Op->Asl.InlineComment = NULL;
    }

    if (Op->Asl.EndNodeComment)
    {
        CommentOption = ENDNODE_COMMENT;
        FUNC1(Op, Op->Asl.EndNodeComment, CommentOption);
        Op->Asl.EndNodeComment = NULL;
    }

    if (Op->Asl.CloseBraceComment)
    {
        CommentOption = CLOSE_BRACE_COMMENT;
        FUNC1(Op, Op->Asl.CloseBraceComment, CommentOption);
        Op->Asl.CloseBraceComment = NULL;
    }
}