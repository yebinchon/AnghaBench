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
typedef  int /*<<< orphan*/  Char ;

/* Variables and functions */
 unsigned int FUNC0 (int /*<<< orphan*/ *) ; 
 int SHOUT ; 
 int /*<<< orphan*/ * STRNULL ; 
 int /*<<< orphan*/  STRlistflags ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,char) ; 
 size_t FUNC2 (int /*<<< orphan*/ *) ; 
 unsigned int TermH ; 
 scalar_t__ Tty_raw_mode ; 
 scalar_t__ didfds ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int lbuffed ; 
 unsigned int FUNC6 (unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (char*,int /*<<< orphan*/ *,...) ; 
 int /*<<< orphan*/  FUNC10 (char) ; 

void
FUNC11(Char *dir, Char *items[], int count, int no_file_suffix)
{
    int i, r, c, columns, rows;
    size_t w;
    unsigned int wx, maxwidth = 0;
    Char *val;
    int across;

    lbuffed = 0;		/* turn off line buffering */

    
    across = ((val = FUNC8(STRlistflags)) != STRNULL) && 
	     (FUNC1(val, 'x') != NULL);

    for (i = 0; i < count; i++)	{ /* find widest string */
	maxwidth = FUNC6(maxwidth, (unsigned int) FUNC0(items[i]));
    }

    maxwidth += no_file_suffix ? 1 : 2;	/* for the file tag and space */
    columns = TermH / maxwidth;		/* PWP: terminal size change */
    if (!columns || !FUNC5(didfds ? 1 : SHOUT))
	columns = 1;
    rows = (count + (columns - 1)) / columns;

    i = -1;
    for (r = 0; r < rows; r++) {
	for (c = 0; c < columns; c++) {
	    i = across ? (i + 1) : (c * rows + r);

	    if (i < count) {
		wx = 0;
		w = FUNC2(items[i]);

#ifdef COLOR_LS_F
		if (no_file_suffix) {
		    /* Print the command name */
		    Char f = items[i][w - 1];
		    items[i][w - 1] = 0;
		    print_with_color(items[i], w - 1, f);
		    items[i][w - 1] = f;
		}
		else {
		    /* Print filename followed by '/' or '*' or ' ' */
		    print_with_color(items[i], w, filetype(dir, items[i]));
		    wx++;
		}
#else /* ifndef COLOR_LS_F */
		if (no_file_suffix) {
		    /* Print the command name */
		    FUNC9("%S", items[i]);
		}
		else {
		    /* Print filename followed by '/' or '*' or ' ' */
		    FUNC9("%-S%c", items[i], FUNC3(dir, items[i]));
		    wx++;
		}
#endif /* COLOR_LS_F */

		if (c < (columns - 1)) {	/* Not last column? */
		    w = FUNC0(items[i]) + wx;
		    for (; w < maxwidth; w++)
			FUNC10(' ');
		}
	    }
	    else if (across)
		break;
	}
	if (Tty_raw_mode)
	    FUNC10('\r');
	FUNC10('\n');
    }

    lbuffed = 1;		/* turn back on line buffering */
    FUNC4();
}