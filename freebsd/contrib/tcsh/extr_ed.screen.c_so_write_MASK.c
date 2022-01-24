#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int Char ;

/* Variables and functions */
 int CHAR_DBWIDTH ; 
 int Cursor ; 
 int CursorH ; 
 int CursorV ; 
 int** Display ; 
 int IncMatchLen ; 
 int InputBuf ; 
 int LITERAL ; 
 int LIT_FACTOR ; 
 int MARGIN_AUTO ; 
 int MARGIN_MAGIC ; 
 int /*<<< orphan*/  Mark ; 
 scalar_t__ MarkIsSet ; 
 int* Prompt ; 
 int /*<<< orphan*/  STRhighlight ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int T_Margin ; 
 int TermH ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 scalar_t__ highlighting ; 
 int* litptr ; 
 int FUNC4 (int,int /*<<< orphan*/ ) ; 
 int FUNC5 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (char*,int) ; 

void
FUNC9(Char *cp, int n)
{
    int cur_pos, prompt_len = 0, region_start = 0, region_end = 0;

    if (n <= 0)
	return;			/* catch bugs */

    if (n > TermH) {
#ifdef DEBUG_SCREEN
	xprintf("so_write: n is riduculous: %d\r\n", n);
	flush();
#endif /* DEBUG_SCREEN */
	return;
    }

    if (FUNC2(STRhighlight)) {
	/* find length of prompt */
	Char *promptc;
	for (promptc = Prompt; *promptc; promptc++);
	prompt_len = promptc - Prompt;

	/* find region start and end points */
	if (IncMatchLen) {
	    region_start = (Cursor - InputBuf) + prompt_len;
	    region_end = region_start + IncMatchLen;
	} else if (MarkIsSet) {
	    region_start = (FUNC5(Cursor, Mark) - InputBuf) + prompt_len;
	    region_end   = (FUNC4(Cursor, Mark) - InputBuf) + prompt_len;
	}
    }

    do {
	if (FUNC2(STRhighlight)) {
	    cur_pos = CursorV * TermH + CursorH;
	    if (!highlighting &&
		cur_pos >= region_start && cur_pos < region_end)
		FUNC0();
	    else if (highlighting && cur_pos >= region_end)
		FUNC1();

	    /* don't highlight over the cursor. the highlighting's reverse
	     * video would cancel it out. :P */
	    if (highlighting && cur_pos == (Cursor - InputBuf) + prompt_len)
		FUNC1();
	}

	if (*cp != CHAR_DBWIDTH) {
	    if (*cp & LITERAL) {
		Char   *d;
#ifdef DEBUG_LITERAL
		xprintf("so: litnum %d\r\n", (int)(*cp & ~LITERAL));
#endif /* DEBUG_LITERAL */
		for (d = litptr + (*cp & ~LITERAL) * LIT_FACTOR; *d; d++)
		    (void) FUNC7(*d);
	    }
	    else
		(void) FUNC7(*cp);
	}
	cp++;
	CursorH++;
    } while (--n);

    if (FUNC2(STRhighlight) && highlighting)
	FUNC1();

    if (CursorH >= TermH) { /* wrap? */
	if (T_Margin & MARGIN_AUTO) { /* yes */
	    CursorH = 0;
	    CursorV++;
	    if (T_Margin & MARGIN_MAGIC) {
		/* force the wrap to avoid the "magic" situation */
		Char xc;
		if ((xc = Display[CursorV][CursorH]) != '\0') {
		    FUNC9(&xc, 1);
		    while(Display[CursorV][CursorH] == CHAR_DBWIDTH)
			CursorH++;
		}
		else {
		    (void) FUNC6(' ');
		    CursorH = 1;
		}
	    }
	}
	else			/* no wrap, but cursor stays on screen */
	    CursorH = TermH - 1;
    }
}