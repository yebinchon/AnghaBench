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
 int ATTRIBUTES ; 
 int BOLD ; 
 int CHAR ; 
 int /*<<< orphan*/  CHAR_DBWIDTH ; 
 int FUNC0 (char) ; 
 int /*<<< orphan*/  FUNC1 (int*,int,int /*<<< orphan*/ ) ; 
#define  NLSCLASS_CTRL 135 
#define  NLSCLASS_ILLEGAL 134 
#define  NLSCLASS_ILLEGAL2 133 
#define  NLSCLASS_ILLEGAL3 132 
#define  NLSCLASS_ILLEGAL4 131 
#define  NLSCLASS_ILLEGAL5 130 
#define  NLSCLASS_NL 129 
#define  NLSCLASS_TAB 128 
 int FUNC2 (int,int,int) ; 
 int STANDOUT ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int UNDER ; 
 int /*<<< orphan*/ ** Vdisplay ; 
 int /*<<< orphan*/  FUNC4 (int,int) ; 
 int* _toascii ; 
 int* _toebcdic ; 
 int vcursor_h ; 
 int vcursor_v ; 

__attribute__((used)) static int
FUNC5(Char *cp, int nocomb, int drawPrompt)
{
    int w, i, lv, lh;
    Char c, attr;

#ifdef WIDE_STRINGS
    if (!drawPrompt) {			/* draw command-line */
	attr = 0;
	c = *cp;
    } else {				/* draw prompt */
	/* prompt with attributes(UNDER,BOLD,STANDOUT) */
	if (*cp & (UNDER | BOLD | STANDOUT)) {		/* *cp >= STANDOUT */

	    /* example)
	     * We can't distinguish whether (*cp=)0x02ffffff is
	     * U+02FFFFFF or U+00FFFFFF|STANDOUT.
	     * We handle as U+00FFFFFF|STANDOUT, only when drawing prompt. */
	    attr = (*cp & ATTRIBUTES);
	    /* ~(UNDER | BOLD | STANDOUT) = 0xf1ffffff */
	    c = *cp & ~(UNDER | BOLD | STANDOUT);

	    /* if c is ctrl code, we handle *cp as havnig no attributes */
	    if ((c < 0x20 && c >= 0) || c == 0x7f) {
		attr = 0;
		c = *cp;
	    }
	} else {			/* prompt without attributes */
	    attr = 0;
	    c = *cp;
	}
    }
#else
    attr = *cp & ~CHAR;
    c = *cp & CHAR;
#endif
    w = FUNC2(c, nocomb, drawPrompt);
    switch (w) {
	case NLSCLASS_NL:
	    FUNC4('\0', 0);		/* assure end of line	 */
	    vcursor_h = 0;		/* reset cursor pos	 */
	    vcursor_v++;
	    break;
	case NLSCLASS_TAB:
	    do {
		FUNC4(' ', 1);
	    } while ((vcursor_h & 07) != 0);
	    break;
	case NLSCLASS_CTRL:
	    FUNC4('^' | attr, 1);
	    if (c == FUNC0('\177')) {
		FUNC4('?' | attr, 1);
	    } else {
#ifdef IS_ASCII
		/* uncontrolify it; works only for iso8859-1 like sets */
		Vdraw(c | 0100 | attr, 1);
#else
		FUNC4(_toebcdic[_toascii[c]|0100] | attr, 1);
#endif
	    }
	    break;
	case NLSCLASS_ILLEGAL:
	    FUNC4('\\' | attr, 1);
	    FUNC4((((c >> 6) & 7) + '0') | attr, 1);
	    FUNC4((((c >> 3) & 7) + '0') | attr, 1);
	    FUNC4(((c & 7) + '0') | attr, 1);
	    break;
	case NLSCLASS_ILLEGAL2:
	case NLSCLASS_ILLEGAL3:
	case NLSCLASS_ILLEGAL4:
	case NLSCLASS_ILLEGAL5:
	    FUNC4('\\', 1);
	    FUNC4('U', 1);
	    FUNC4('+', 1);
	    for (i = 16 + 4 * (-w-5); i >= 0; i -= 4)
		FUNC4("0123456789ABCDEF"[(c >> i) & 15] | attr, 1);
	    break;
	case 0:
	    lv = vcursor_v;
	    lh = vcursor_h;
	    for (;;) {
		lh--;
		if (lh < 0) {
		    lv--;
		    if (lv < 0)
			break;
		    lh = FUNC3(Vdisplay[lv]) - 1;
		}
		if (Vdisplay[lv][lh] != CHAR_DBWIDTH)
		    break;
	    }
	    if (lv < 0) {
		FUNC4('\\' | attr, 1);
		FUNC4((((c >> 6) & 7) + '0') | attr, 1);
		FUNC4((((c >> 3) & 7) + '0') | attr, 1);
		FUNC4(((c & 7) + '0') | attr, 1);
		break;
	    }
	    Vdisplay[lv][lh] = FUNC1(cp, 1, Vdisplay[lv][lh]);
	    break;
	default:
	    FUNC4(*cp, w);
	    break;
    }
    return 1;
}