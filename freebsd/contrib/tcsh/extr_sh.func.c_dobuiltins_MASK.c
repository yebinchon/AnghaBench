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
typedef  int /*<<< orphan*/ * command ;
struct biltins {int /*<<< orphan*/  bname; } ;
typedef  int /*<<< orphan*/  Char ;

/* Variables and functions */
 int TermH ; 
 scalar_t__ Tty_raw_mode ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ **) ; 
 struct biltins const* bfunc ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 scalar_t__ lbuffed ; 
 int /*<<< orphan*/  lbuffed_cleanup ; 
 unsigned int FUNC4 (unsigned int,unsigned int) ; 
 size_t nbfunc ; 
 int /*<<< orphan*/  FUNC5 (unsigned int) ; 
 unsigned int FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char) ; 

void
FUNC9(Char **v, struct command *c)
{
    /* would use print_by_column() in tw.parse.c but that assumes
     * we have an array of Char * to pass.. (sg)
     */
    const struct biltins *b;
    int row, col, columns, rows;
    unsigned int w, maxwidth;

    FUNC0(c);
    FUNC0(v);
    lbuffed = 0;		/* turn off line buffering */
    FUNC1(&lbuffed, lbuffed_cleanup);

    /* find widest string */
    for (maxwidth = 0, b = bfunc; b < &bfunc[nbfunc]; ++b)
	maxwidth = FUNC4(maxwidth, FUNC6(b->bname));
    ++maxwidth;					/* for space */

    columns = (TermH + 1) / maxwidth;	/* PWP: terminal size change */
    if (!columns)
	columns = 1;
    rows = (nbfunc + (columns - 1)) / columns;

    for (b = bfunc, row = 0; row < rows; row++) {
	for (col = 0; col < columns; col++) {
	    if (b < &bfunc[nbfunc]) {
		w = FUNC6(b->bname);
		FUNC7("%s", b->bname);
		if (col < (columns - 1))	/* Not last column? */
		    for (; w < maxwidth; w++)
			FUNC8(' ');
		++b;
	    }
	}
	if (row < (rows - 1)) {
	    if (Tty_raw_mode)
		FUNC8('\r');
	    FUNC8('\n');
	}
    }
#ifdef WINNT_NATIVE
    nt_print_builtins(maxwidth);
#else
    if (Tty_raw_mode)
	FUNC8('\r');
    FUNC8('\n');
#endif /* WINNT_NATIVE */

    FUNC2(&lbuffed);		/* turn back on line buffering */
    FUNC3();
}