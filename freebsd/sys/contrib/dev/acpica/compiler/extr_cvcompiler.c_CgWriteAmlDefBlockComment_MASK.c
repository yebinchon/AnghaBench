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
struct TYPE_6__ {scalar_t__ ParseOpcode; char* CloseBraceComment; TYPE_3__* CommentList; int /*<<< orphan*/  Filename; } ;
struct TYPE_7__ {TYPE_1__ Asl; } ;
typedef  TYPE_2__ ACPI_PARSE_OBJECT ;
typedef  TYPE_3__ ACPI_COMMENT_NODE ;

/* Variables and functions */
 int /*<<< orphan*/  AcpiGbl_CaptureComments ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int /*<<< orphan*/  END_DEFBLK_COMMENT ; 
 int /*<<< orphan*/  FILENAME_COMMENT ; 
 char* FILE_SUFFIX_DISASSEMBLY ; 
 scalar_t__ PARSEOP_DEFINITION_BLOCK ; 
 int /*<<< orphan*/  STD_DEFBLK_COMMENT ; 
 char* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 char* FUNC6 (char*,char) ; 

void
FUNC7(
    ACPI_PARSE_OBJECT       *Op)
{
    UINT8                   CommentOption;
    ACPI_COMMENT_NODE       *Current;
    char                    *NewFilename;
    char                    *Position;
    char                    *DirectoryPosition;


    if (!AcpiGbl_CaptureComments ||
        (Op->Asl.ParseOpcode != PARSEOP_DEFINITION_BLOCK))
    {
        return;
    }

    FUNC1 ("Printing comments for a definition block..\n");

    /* First, print the file name comment after changing .asl to .dsl */

    NewFilename = FUNC2 (FUNC5 (Op->Asl.Filename));
    FUNC4 (NewFilename, Op->Asl.Filename);
    DirectoryPosition = FUNC6 (NewFilename, '/');
    Position = FUNC6 (NewFilename, '.');

    if (Position && (Position > DirectoryPosition))
    {
        /* Tack on the new suffix */

        Position++;
        *Position = 0;
        FUNC3 (Position, FILE_SUFFIX_DISASSEMBLY);
    }
    else
    {
        /* No dot, add one and then the suffix */

        FUNC3 (NewFilename, ".");
        FUNC3 (NewFilename, FILE_SUFFIX_DISASSEMBLY);
    }

    CommentOption = FILENAME_COMMENT;
    FUNC0(Op, NewFilename, CommentOption);

    Current = Op->Asl.CommentList;
    CommentOption = STD_DEFBLK_COMMENT;

    while (Current)
    {
        FUNC0(Op, Current->Comment, CommentOption);
        FUNC1 ("Printing comment: %s\n", Current->Comment);
        Current = Current->Next;
    }

    Op->Asl.CommentList = NULL;

    /* Print any Inline comments associated with this node */

    if (Op->Asl.CloseBraceComment)
    {
        CommentOption = END_DEFBLK_COMMENT;
        FUNC0(Op, Op->Asl.CloseBraceComment, CommentOption);
        Op->Asl.CloseBraceComment = NULL;
    }
}