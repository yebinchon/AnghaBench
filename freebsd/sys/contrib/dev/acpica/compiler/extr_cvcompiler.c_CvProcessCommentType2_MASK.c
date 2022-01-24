#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  size_t UINT32 ;
struct TYPE_3__ {int SpacesBefore; int CommentType; scalar_t__ CaptureComments; } ;
typedef  TYPE_1__ ASL_COMMENT_STATE ;

/* Variables and functions */
 scalar_t__ AcpiGbl_CaptureComments ; 
 char* AslGbl_MsgBuffer ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 char* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*) ; 
 int FUNC5 (char*) ; 

void
FUNC6 (
    ASL_COMMENT_STATE       CurrentState,
    char                    *StringBuffer)
{
    UINT32                  i;
    char                    *CommentString;
    char                    *FinalCommentString;


    if (AcpiGbl_CaptureComments && CurrentState.CaptureComments)
    {
        *StringBuffer = 0; /* null terminate */
        FUNC0 ("Single-line comment\n");
        CommentString = FUNC2 (FUNC5 (AslGbl_MsgBuffer) + 1);
        FUNC4 (CommentString, AslGbl_MsgBuffer);

        /* If this comment lies on the same line as the latest parse op,
         * assign it to that op's CommentAfter field. Saving in this field
         * will allow us to support comments that come after code on the
         * same line as the code itself. For example,
         * Name(A,"") //comment
         *
         * will be retained rather than transformed into
         *
         * Name(A,"")
         * //comment
         *
         * For this case, we only need to add one comment since
         *
         * Name(A,"") //comment1 //comment2 ... more comments here.
         *
         * would be lexically analyzed as a single comment.
         *
         * Create a new string with the appropriate spaces. Since we need
         * to account for the proper spacing, the actual comment,
         * extra 2 spaces so that this comment can be converted to the "/ *"
         * style and the null terminator, the string would look something
         * like:
         *
         * [ (spaces) (comment)  ( * /) ('\0') ]
         *
         */
        FinalCommentString = FUNC2 (CurrentState.SpacesBefore +
            FUNC5 (CommentString) + 3 + 1);

        for (i = 0; (CurrentState.CommentType != 1) &&
            (i < CurrentState.SpacesBefore); i++)
        {
            FinalCommentString[i] = ' ';
        }

        FUNC3 (FinalCommentString, CommentString);

        /* convert to a "/ *" style comment  */

        FUNC3 (FinalCommentString, " */");
        FinalCommentString [CurrentState.SpacesBefore +
            FUNC5 (CommentString) + 3] = 0;

        /* get rid of the carriage return */

        if (FinalCommentString[FUNC5 (FinalCommentString) - 1] == 0x0D)
        {
            FinalCommentString[FUNC5(FinalCommentString) - 1] = 0;
        }

        FUNC1 (CurrentState.CommentType, FinalCommentString);
    }
}