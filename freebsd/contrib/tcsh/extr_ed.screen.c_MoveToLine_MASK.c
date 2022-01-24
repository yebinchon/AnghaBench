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

/* Variables and functions */
 char CHAR_DBWIDTH ; 
 size_t CursorH ; 
 int CursorV ; 
 char** Display ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int MARGIN_AUTO ; 
 int /*<<< orphan*/  FUNC1 (size_t) ; 
 int /*<<< orphan*/  PUTPURE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  T_DO ; 
 int T_Margin ; 
 int /*<<< orphan*/  T_UP ; 
 int /*<<< orphan*/  T_up ; 
 size_t TermH ; 
 int TermV ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (char) ; 
 int /*<<< orphan*/  FUNC5 (char*,size_t) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char*,int) ; 

void
FUNC9(int where)		
{
    int     del;

    if (where == CursorV)
	return;

    if (where > TermV) {
#ifdef DEBUG_SCREEN
	xprintf("MoveToLine: where is ridiculous: %d\r\n", where);
	flush();
#endif /* DEBUG_SCREEN */
	return;
    }

    del = where - CursorV;

    if (del > 0) {
	while (del > 0) {
	    if ((T_Margin & MARGIN_AUTO) && Display[CursorV][0] != '\0') {
		size_t h;

		for (h = TermH - 1; h > 0 && Display[CursorV][h] == CHAR_DBWIDTH;
		     h--)
		    ;
		/* move without newline */
		FUNC1(h);
		FUNC5(&Display[CursorV][CursorH], TermH - CursorH); /* updates CursorH/V*/
		del--;
	    }
	    else {
		if ((del > 1) && FUNC0(T_DO)) {
		    (void) FUNC7(FUNC6(FUNC2(T_DO), del, del), del, PUTPURE);
		    del = 0;
		}
		else {
		    for ( ; del > 0; del--) 
			(void) FUNC4('\n');
		    CursorH = 0;	/* because the \n will become \r\n */
		}
	    }
	}
    }
    else {			/* del < 0 */
	if (FUNC0(T_UP) && (-del > 1 || !FUNC0(T_up)))
	    (void) FUNC7(FUNC6(FUNC2(T_UP), -del, -del), -del, PUTPURE);
	else {
	    int i;
	    if (FUNC0(T_up))
		for (i = 0; i < -del; i++)
		    (void) FUNC7(FUNC2(T_up), 1, PUTPURE);
	}
    }
    CursorV = where;		/* now where is here */
}