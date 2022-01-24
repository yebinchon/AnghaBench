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
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int* Cursor ; 
 int* InputBuf ; 
 int LITERAL ; 
 scalar_t__ MarkIsSet ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
#define  NLSCLASS_CTRL 134 
#define  NLSCLASS_ILLEGAL 133 
#define  NLSCLASS_ILLEGAL2 132 
#define  NLSCLASS_ILLEGAL3 131 
#define  NLSCLASS_ILLEGAL4 130 
 int FUNC4 (int) ; 
#define  NLSCLASS_NL 129 
#define  NLSCLASS_TAB 128 
 int FUNC5 (int,int,int /*<<< orphan*/ ) ; 
 int* Prompt ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  STRhighlight ; 
 int TermH ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 () ; 

void
FUNC9(void)
{				/* only move to new cursor pos */
    Char *cp;
    int w, h, th, v;

    /* first we must find where the cursor is... */
    h = 0;
    v = 0;
    th = TermH;			/* optimize for speed */

    for (cp = Prompt; cp != NULL && *cp; ) {	/* do prompt */
	if (*cp & LITERAL) {
	    cp++;
	    continue;
	}
	w = FUNC5(*cp & CHAR, cp == Prompt, 0);
	cp++;
	switch(w) {
	    case NLSCLASS_NL:
		h = 0;
		v++;
		break;
	    case NLSCLASS_TAB:
		while (++h & 07)
		    ;
		break;
	    case NLSCLASS_CTRL:
		h += 2;
		break;
	    case NLSCLASS_ILLEGAL:
		h += 4;
		break;
	    case NLSCLASS_ILLEGAL2:
	    case NLSCLASS_ILLEGAL3:
	    case NLSCLASS_ILLEGAL4:
		h += 3 + 2 * FUNC4(w);
		break;
	    default:
		h += w;
	}
	if (h >= th) {		/* check, extra long tabs picked up here also */
	    h -= th;
	    v++;
	}
    }

    for (cp = InputBuf; cp < Cursor;) {	/* do input buffer to Cursor */
	w = FUNC5(*cp & CHAR, cp == InputBuf, 0);
	cp++;
	switch(w) {
	    case NLSCLASS_NL:
		h = 0;
		v++;
		break;
	    case NLSCLASS_TAB:
		while (++h & 07)
		    ;
		break;
	    case NLSCLASS_CTRL:
		h += 2;
		break;
	    case NLSCLASS_ILLEGAL:
		h += 4;
		break;
	    case NLSCLASS_ILLEGAL2:
	    case NLSCLASS_ILLEGAL3:
	    case NLSCLASS_ILLEGAL4:
		h += 3 + 2 * FUNC4(w);
		break;
	    default:
		h += w;
	}
	if (h >= th) {		/* check, extra long tabs picked up here also */
	    h -= th;
	    v++;
	}
    }

    /* now go there */
    FUNC3(v);
    FUNC2(h);
    if (FUNC7(STRhighlight) && MarkIsSet) {
	FUNC1();
	FUNC0();
	FUNC6();
    }
    FUNC8();
}