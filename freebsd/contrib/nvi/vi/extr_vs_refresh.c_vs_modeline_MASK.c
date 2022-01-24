#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_27__   TYPE_3__ ;
typedef  struct TYPE_26__   TYPE_2__ ;
typedef  struct TYPE_25__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u_long ;
typedef  int /*<<< orphan*/  buf ;
struct TYPE_27__ {int /*<<< orphan*/  (* scr_addstr ) (TYPE_2__*,char const*,size_t) ;int /*<<< orphan*/  (* scr_move ) (TYPE_2__*,int /*<<< orphan*/ ,size_t) ;int /*<<< orphan*/  (* scr_clrtoeol ) (TYPE_2__*) ;} ;
struct TYPE_26__ {int cols; size_t showmode; int /*<<< orphan*/  ep; scalar_t__ lno; TYPE_1__* frp; TYPE_3__* gp; } ;
struct TYPE_25__ {int /*<<< orphan*/  name; } ;
typedef  TYPE_2__ SCR ;
typedef  TYPE_3__ GS ;
typedef  char CHAR_T ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int /*<<< orphan*/ ,scalar_t__,char*,size_t) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  F_MODIFIED ; 
 scalar_t__ FUNC2 (TYPE_2__*) ; 
 size_t FUNC3 (TYPE_2__*,char) ; 
 int FUNC4 (TYPE_2__*,char) ; 
 char* FUNC5 (TYPE_2__*,char) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 
 scalar_t__ FUNC7 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  O_RULER ; 
 int /*<<< orphan*/  O_SHOWMODE ; 
 char* FUNC8 (TYPE_2__*,char* const,size_t*) ; 
 size_t FUNC9 (char*,int,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_2__*,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_2__*,char*,int) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_2__*,char const*,size_t) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_2__*,char*,int) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_2__*,char*,int) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_2__*,char*,size_t) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC18 (TYPE_2__*,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC19 (TYPE_2__*,char*,int) ; 
 int /*<<< orphan*/  FUNC20 (TYPE_2__*,char*,size_t) ; 
 int /*<<< orphan*/  FUNC21 (TYPE_2__*,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC22 (TYPE_2__*,size_t*) ; 

__attribute__((used)) static void
FUNC23(SCR *sp)
{
	static char * const modes[] = {
		"215|Append",			/* SM_APPEND */
		"216|Change",			/* SM_CHANGE */
		"217|Command",			/* SM_COMMAND */
		"218|Insert",			/* SM_INSERT */
		"219|Replace",			/* SM_REPLACE */
	};
	GS *gp;
	size_t cols, curcol, curlen, endpoint, len, midpoint;
	const char *t = NULL;
	int ellipsis;
	char buf[20];

	gp = sp->gp;

	/*
	 * We put down the file name, the ruler, the mode and the dirty flag.
	 * If there's not enough room, there's not enough room, we don't play
	 * any special games.  We try to put the ruler in the middle and the
	 * mode and dirty flag at the end.
	 *
	 * !!!
	 * Leave the last character blank, in case it's a really dumb terminal
	 * with hardware scroll.  Second, don't paint the last character in the
	 * screen, SunOS 4.1.1 and Ultrix 4.2 curses won't let you.
	 *
	 * Move to the last line on the screen.
	 */
	(void)gp->scr_move(sp, FUNC6(sp), 0);

	/* If more than one screen in the display, show the file name. */
	curlen = 0;
	if (FUNC2(sp)) {
		CHAR_T *wp, *p;
		size_t l;

		FUNC0(sp, sp->frp->name, FUNC10(sp->frp->name) + 1, wp, l);
		p = wp + l;
		for (ellipsis = 0, cols = sp->cols / 2; --p > wp;) {
			if (*p == '/') {
				++p;
				break;
			}
			if ((curlen += FUNC3(sp, *p)) > cols) {
				ellipsis = 3;
				curlen +=
				    FUNC4(sp, '.') * 3 + FUNC4(sp, ' ');
				while (curlen > cols) {
					++p;
					curlen -= FUNC3(sp, *p);
				}
				break;
			}
		}
		if (ellipsis) {
			while (ellipsis--)
				(void)gp->scr_addstr(sp,
				    FUNC5(sp, '.'), FUNC4(sp, '.'));
			(void)gp->scr_addstr(sp,
			    FUNC5(sp, ' '), FUNC4(sp, ' '));
		}
		for (; *p != '\0'; ++p)
			(void)gp->scr_addstr(sp,
			    FUNC5(sp, *p), FUNC3(sp, *p));
	}

	/* Clear the rest of the line. */
	(void)gp->scr_clrtoeol(sp);

	/*
	 * Display the ruler.  If we're not at the midpoint yet, move there.
	 * Otherwise, add in two extra spaces.
	 *
	 * Adjust the current column for the fact that the editor uses it as
	 * a zero-based number.
	 *
	 * XXX
	 * Assume that numbers, commas, and spaces only take up a single
	 * column on the screen.
	 */
	cols = sp->cols - 1;
	if (FUNC7(sp, O_RULER)) {
		FUNC22(sp, &curcol);
		len = FUNC9(buf, sizeof(buf), "%lu,%lu",
		    (u_long)sp->lno, (u_long)(curcol + 1));

		midpoint = (cols - ((len + 1) / 2)) / 2;
		if (curlen < midpoint) {
			(void)gp->scr_move(sp, FUNC6(sp), midpoint);
			curlen += len;
		} else if (curlen + 2 + len < cols) {
			(void)gp->scr_addstr(sp, "  ", 2);
			curlen += 2 + len;
		}
		(void)gp->scr_addstr(sp, buf, len);
	}

	/*
	 * Display the mode and the modified flag, as close to the end of the
	 * line as possible, but guaranteeing at least two spaces between the
	 * ruler and the modified flag.
	 */
#define	MODESIZE	9
	endpoint = cols;
	if (FUNC7(sp, O_SHOWMODE)) {
		if (FUNC1(sp->ep, F_MODIFIED))
			--endpoint;
		t = FUNC8(sp, modes[sp->showmode], &len);
		endpoint -= len;
	}

	if (endpoint > curlen + 2) {
		(void)gp->scr_move(sp, FUNC6(sp), endpoint);
		if (FUNC7(sp, O_SHOWMODE)) {
			if (FUNC1(sp->ep, F_MODIFIED))
				(void)gp->scr_addstr(sp,
				    FUNC5(sp, '*'), FUNC4(sp, '*'));
			(void)gp->scr_addstr(sp, t, len);
		}
	}
}