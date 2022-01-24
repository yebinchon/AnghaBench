#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ UINT32 ;
struct TYPE_7__ {struct TYPE_7__* Next; scalar_t__ Comment; } ;
struct TYPE_5__ {scalar_t__ CloseBraceComment; scalar_t__ EndNodeComment; scalar_t__ InlineComment; TYPE_3__* EndBlkComment; TYPE_3__* CommentList; scalar_t__ ParentFilename; scalar_t__ Filename; scalar_t__ FileChanged; int /*<<< orphan*/  ParseOpName; } ;
struct TYPE_6__ {TYPE_1__ Asl; } ;
typedef  TYPE_2__ ACPI_PARSE_OBJECT ;
typedef  TYPE_3__ ACPI_COMMENT_NODE ;

/* Variables and functions */
 int /*<<< orphan*/  AcpiGbl_CaptureComments ; 
 scalar_t__ FUNC0 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 

UINT32
FUNC3(
   ACPI_PARSE_OBJECT        *Op)
{
    UINT32                  CommentLength = 0;
    UINT32                  TotalCommentLength = 0;
    ACPI_COMMENT_NODE       *Current = NULL;


    if (!AcpiGbl_CaptureComments)
    {
        return (0);
    }

    FUNC1 ("==Calculating comment lengths for %s\n",
        Op->Asl.ParseOpName);

    if (Op->Asl.FileChanged)
    {
        TotalCommentLength += FUNC2 (Op->Asl.Filename) + 3;

        if (Op->Asl.ParentFilename &&
            FUNC0 (Op->Asl.Filename, Op->Asl.ParentFilename))
        {
            TotalCommentLength += FUNC2 (Op->Asl.ParentFilename) + 3;
        }
    }

    if (Op->Asl.CommentList)
    {
        Current = Op->Asl.CommentList;
        while (Current)
        {
            CommentLength = FUNC2 (Current->Comment)+3;
            FUNC1 ("Length of standard comment: %d\n", CommentLength);
            FUNC1 ("    Comment string: %s\n\n", Current->Comment);
            TotalCommentLength += CommentLength;
            Current = Current->Next;
        }
    }

    if (Op->Asl.EndBlkComment)
    {
        Current = Op->Asl.EndBlkComment;
        while (Current)
        {
            CommentLength = FUNC2 (Current->Comment)+3;
            FUNC1 ("Length of endblkcomment: %d\n", CommentLength);
            FUNC1 ("    Comment string: %s\n\n", Current->Comment);
            TotalCommentLength += CommentLength;
            Current = Current->Next;
        }
    }

    if (Op->Asl.InlineComment)
    {
        CommentLength = FUNC2 (Op->Asl.InlineComment)+3;
        FUNC1 ("Length of inline comment: %d\n", CommentLength);
        FUNC1 ("    Comment string: %s\n\n", Op->Asl.InlineComment);
        TotalCommentLength += CommentLength;
    }

    if (Op->Asl.EndNodeComment)
    {
        CommentLength = FUNC2(Op->Asl.EndNodeComment)+3;
        FUNC1 ("Length of end node comment +3: %d\n", CommentLength);
        FUNC1 ("    Comment string: %s\n\n", Op->Asl.EndNodeComment);
        TotalCommentLength += CommentLength;
    }

    if (Op->Asl.CloseBraceComment)
    {
        CommentLength = FUNC2 (Op->Asl.CloseBraceComment)+3;
        FUNC1 ("Length of close brace comment: %d\n", CommentLength);
        FUNC1 ("    Comment string: %s\n\n", Op->Asl.CloseBraceComment);
        TotalCommentLength += CommentLength;
    }

    FUNC1("\n\n");
    return (TotalCommentLength);
}