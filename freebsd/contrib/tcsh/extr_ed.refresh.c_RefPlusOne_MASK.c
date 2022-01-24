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
 int CHAR ; 
 int FUNC0 (char) ; 
 int /*<<< orphan*/  Cursor ; 
 scalar_t__ CursorH ; 
 int* InputBuf ; 
 int /*<<< orphan*/  LastChar ; 
 int FUNC1 (int*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MarkIsSet ; 
#define  NLSCLASS_CTRL 129 
#define  NLSCLASS_ILLEGAL 128 
 int FUNC2 (int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int,int) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  STRhighlight ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 scalar_t__ TermH ; 
 int* _toascii ; 
 int* _toebcdic ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 scalar_t__ rprompt_h ; 

void
FUNC9(int l)
{				/* we added just one char, handle it fast.
				 * assumes that screen cursor == real cursor */
    Char *cp, c;
    int w;

    if (Cursor != LastChar) {
	FUNC4();		/* too hard to handle */
	return;
    }
    if (rprompt_h != 0 && (TermH - CursorH - rprompt_h < 3)) {
	FUNC4();		/* clear out rprompt if less than one char gap*/
	return;
    }
    cp = Cursor - l;
    c = *cp & CHAR;
    w = FUNC2(c, cp == InputBuf, 0);
    switch(w) {
	case NLSCLASS_CTRL:
	    FUNC3('^', 1);
	    if (c == FUNC0('\177')) {
		FUNC3('?', 1);
		break;
	    }
#ifdef IS_ASCII
	    /* uncontrolify it; works only for iso8859-1 like sets */
	    PutPlusOne((c | 0100), 1);
#else
	    FUNC3(_toebcdic[_toascii[c]|0100], 1);
#endif
	    break;
	case NLSCLASS_ILLEGAL:
	    FUNC3('\\', 1);
	    FUNC3(((c >> 6) & 7) + '0', 1);
	    FUNC3(((c >> 3) & 7) + '0', 1);
	    FUNC3((c & 7) + '0', 1);
	    break;
	case 1:
	    if (FUNC7(STRhighlight) && MarkIsSet)
		FUNC5();
	    if (l > 1)
		FUNC3(FUNC1(cp, l, 0), 1);
	    else
		FUNC3(*cp, 1);
	    if (FUNC7(STRhighlight) && MarkIsSet)
		FUNC6();
	    break;
	default:
	    FUNC4();		/* too hard to handle */
	    return;
    }
    FUNC8();
}