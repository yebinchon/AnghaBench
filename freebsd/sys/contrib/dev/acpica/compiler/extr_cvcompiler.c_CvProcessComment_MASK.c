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
typedef  int UINT64 ;
struct TYPE_3__ {int SpacesBefore; scalar_t__ CommentType; scalar_t__ CaptureComments; } ;
typedef  scalar_t__ BOOLEAN ;
typedef  TYPE_1__ ASL_COMMENT_STATE ;

/* Variables and functions */
 scalar_t__ ASL_COMMENT_STANDARD ; 
 scalar_t__ AcpiGbl_CaptureComments ; 
 char* AslGbl_MsgBuffer ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,char*) ; 
 scalar_t__ FALSE ; 
 scalar_t__ TRUE ; 
 char* FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*) ; 
 int FUNC6 (char*) ; 
 char* FUNC7 (char*,char*) ; 

void
FUNC8 (
    ASL_COMMENT_STATE       CurrentState,
    char                    *StringBuffer,
    int                     c1)
{
    UINT64                  i;
    char                    *LineToken;
    char                    *FinalLineToken;
    BOOLEAN                 CharStart;
    char                    *CommentString;
    char                    *FinalCommentString;


    if (AcpiGbl_CaptureComments && CurrentState.CaptureComments)
    {
        *StringBuffer = (char) c1;
        ++StringBuffer;
        *StringBuffer = 0;

        FUNC1 ("Multi-line comment\n");
        CommentString = FUNC3 (FUNC6 (AslGbl_MsgBuffer) + 1);
        FUNC5 (CommentString, AslGbl_MsgBuffer);

        FUNC1 ("CommentString: %s\n", CommentString);

        /*
         * Determine whether if this comment spans multiple lines. If so,
         * break apart the comment by storing each line in a different node
         * within the comment list. This allows the disassembler to
         * properly indent a multi-line comment.
         */
        LineToken = FUNC7 (CommentString, "\n");

        if (LineToken)
        {
            FinalLineToken = FUNC3 (FUNC6 (LineToken) + 1);
            FUNC5 (FinalLineToken, LineToken);

            /* Get rid of any carriage returns */

            if (FinalLineToken[FUNC6 (FinalLineToken) - 1] == 0x0D)
            {
                FinalLineToken[FUNC6(FinalLineToken)-1] = 0;
            }

            FUNC0 (FinalLineToken);
            LineToken = FUNC7 (NULL, "\n");
            while (LineToken != NULL)
            {
                /*
                 * It is assumed that each line has some sort of indentation.
                 * This means that we need to find the first character that
                 * is not a white space within each line.
                 */
                CharStart = FALSE;
                for (i = 0; (i < (FUNC6 (LineToken) + 1)) && !CharStart; i++)
                {
                    if (LineToken[i] != ' ' && LineToken[i] != '\t')
                    {
                        CharStart = TRUE;
                        LineToken += i-1;
                        LineToken [0] = ' '; /* Pad for Formatting */
                    }
                }

                FinalLineToken = FUNC3 (FUNC6 (LineToken) + 1);
                FUNC4 (FinalLineToken, LineToken);

                /* Get rid of any carriage returns */

                if (FinalLineToken[FUNC6 (FinalLineToken) - 1] == 0x0D)
                {
                    FinalLineToken[FUNC6(FinalLineToken) - 1] = 0;
                }

                FUNC0 (FinalLineToken);
                LineToken = FUNC7 (NULL,"\n");
            }
        }

        /*
         * If this only spans a single line, check to see whether if this
         * comment appears on the same line as a line of code. If does,
         * retain it's position for stylistic reasons. If it doesn't,
         * add it to the comment list so that it can be associated with
         * the next node that's created.
         */
        else
        {
           /*
            * If this is not a regular comment, pad with extra spaces that
            * appeared in the original source input to retain the original
            * spacing.
            */
            FinalCommentString =
                FUNC3 (FUNC6 (CommentString) +
                CurrentState.SpacesBefore + 1);

            for (i = 0; (CurrentState.CommentType != ASL_COMMENT_STANDARD) &&
                (i < CurrentState.SpacesBefore); i++)
            {
                 FinalCommentString[i] = ' ';
            }

            FUNC4 (FinalCommentString, CommentString);
            FUNC2 (CurrentState.CommentType, FinalCommentString);
        }
    }
}