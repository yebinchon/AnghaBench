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
 int FUNC0 (int) ; 
 int ATTRIBUTES ; 
 int CHAR ; 
 int FUNC1 (int) ; 
 int MB_CUR_MAX ; 
 int QUOTE ; 
 int /*<<< orphan*/  STRcolorcat ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int TRIM ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ didfds ; 
 int /*<<< orphan*/  FUNC4 () ; 
 scalar_t__ haderr ; 
 scalar_t__ is1atty ; 
 scalar_t__ is2atty ; 
 scalar_t__ FUNC5 (int) ; 
 scalar_t__ isdiagatty ; 
 scalar_t__ isoutatty ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 scalar_t__ lbuffed ; 
 int /*<<< orphan*/  output_raw ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 scalar_t__ xlate_cr ; 

void
FUNC9(int c)
{
    int     atr;

    atr = c & ATTRIBUTES & TRIM;
    c &= CHAR | QUOTE;
    if (!output_raw && (c & QUOTE) == 0) {
	if (FUNC5(c) && (FUNC0(c) < 0x80 || MB_CUR_MAX == 1)) {
	    if (c != '\t' && c != '\n'
#ifdef COLORCAT
	        && !(adrof(STRcolorcat) && c == CTL_ESC('\033'))
#endif
		&& (xlate_cr || c != '\r'))
	    {
		FUNC9('^' | atr);
		if (c == FUNC1('\177'))
		    c = '?';
		else
		    /* Note: for IS_ASCII, this compiles to: c = c | 0100 */
		    c = FUNC1(FUNC0(c)|0100);
	    }
	}
	else if (!FUNC6(c) && (FUNC0(c) < 0x80 || MB_CUR_MAX == 1)) {
	    FUNC9('\\' | atr);
	    FUNC9((((c >> 6) & 7) + '0') | atr);
	    FUNC9((((c >> 3) & 7) + '0') | atr);
	    c = (c & 7) + '0';
	}
	(void) FUNC8(c | atr);
    }
    else {
	c &= TRIM;
	if (haderr ? (didfds ? is2atty : isdiagatty) :
	    (didfds ? is1atty : isoutatty))
	    FUNC2(c | atr);
	(void) FUNC7(c);
    }
    if (lbuffed && (c & CHAR) == '\n')
	FUNC4();
}