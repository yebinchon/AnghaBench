#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_2__ ;
typedef  struct TYPE_16__   TYPE_1__ ;
typedef  struct TYPE_15__   TYPE_13__ ;

/* Type definitions */
struct TYPE_15__ {scalar_t__ sg_ispeed; scalar_t__ sg_ospeed; int c_cflag; int c_lflag; int c_iflag; int c_oflag; int sg_flags; } ;
struct TYPE_17__ {int d_lb; TYPE_13__ d_t; } ;
struct TYPE_16__ {int t_clrmask; int t_setmask; } ;

/* Variables and functions */
 int C_NCC ; 
 int FUNC0 (int) ; 
 scalar_t__ FUNC1 () ; 
 size_t ED_IO ; 
 size_t EX_IO ; 
 size_t M_CHAR ; 
 size_t M_CONTROL ; 
 size_t M_INPUT ; 
 size_t M_LINED ; 
 size_t M_LOCAL ; 
 size_t M_OUTPUT ; 
 int /*<<< orphan*/  SHTTY ; 
 size_t TS_IO ; 
 scalar_t__ T_Speed ; 
 scalar_t__ T_Tabs ; 
 int /*<<< orphan*/  Tty_eight_bit ; 
 int Tty_raw_mode ; 
 int XTABS ; 
 int /*<<< orphan*/  FUNC2 (TYPE_13__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_13__*,scalar_t__) ; 
 scalar_t__ didsetty ; 
 int /*<<< orphan*/  FUNC4 () ; 
 TYPE_2__ edtty ; 
 int /*<<< orphan*/  errno ; 
 TYPE_2__ extty ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 TYPE_2__ tstty ; 
 scalar_t__ FUNC7 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*) ; 
 scalar_t__ FUNC10 (TYPE_2__*) ; 
 scalar_t__ FUNC11 (TYPE_2__*) ; 
 int FUNC12 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_2__*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,size_t) ; 
 int FUNC15 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 scalar_t__** ttychars ; 
 TYPE_1__** ttylist ; 
 scalar_t__ vdisable ; 
 int /*<<< orphan*/  FUNC16 (char*,int /*<<< orphan*/ ) ; 

int
FUNC17(void)
{
    if (Tty_raw_mode)
	return (0);

#ifdef WINNT_NATIVE
    do_nt_raw_mode();
#else /* !WINNT_NATIVE */
# ifdef _IBMR2
    tty_setdisc(SHTTY, ED_IO);
# endif /* _IBMR2 */

    if (FUNC12(SHTTY, &tstty) == -1) {
# ifdef DEBUG_TTY
	xprintf("Rawmode: tty_getty: %s\n", strerror(errno));
# endif /* DEBUG_TTY */
	return(-1);
    }

    /*
     * We always keep up with the eight bit setting and the speed of the
     * tty. But only we only believe changes that are made to cooked mode!
     */
# if defined(POSIX) || defined(TERMIO)
    Tty_eight_bit = tty_geteightbit(&tstty);
    T_Speed = tty_getspeed(&tstty);

#  ifdef POSIX
    /*
     * Fix from: Steven (Steve) B. Green <xrsbg@charney.gsfc.nasa.gov>
     * Speed was not being set up correctly under POSIX.
     */
    if (tty_getspeed(&extty) != T_Speed || tty_getspeed(&edtty) != T_Speed) {
	(void) cfsetispeed(&extty.d_t, T_Speed);
	(void) cfsetospeed(&extty.d_t, T_Speed);
	(void) cfsetispeed(&edtty.d_t, T_Speed);
	(void) cfsetospeed(&edtty.d_t, T_Speed);
    }
#  endif /* POSIX */
# else /* GSTTY */

    T_Speed = FUNC10(&tstty);
    Tty_eight_bit = FUNC9(&tstty);

    if (extty.d_t.sg_ispeed != tstty.d_t.sg_ispeed) {
	extty.d_t.sg_ispeed = tstty.d_t.sg_ispeed;
	edtty.d_t.sg_ispeed = tstty.d_t.sg_ispeed;
    }

    if (extty.d_t.sg_ospeed != tstty.d_t.sg_ospeed) {
	extty.d_t.sg_ospeed = tstty.d_t.sg_ospeed;
	edtty.d_t.sg_ospeed = tstty.d_t.sg_ospeed;
    }
# endif /* POSIX || TERMIO */

    if (FUNC7(&tstty)) {
	/*
	 * re-test for some things here (like maybe the user typed 
	 * "stty -tabs"
	 */
	if (FUNC11(&tstty) == 0)
	    T_Tabs = 0;
	else 
	    T_Tabs = FUNC1();

# if defined(POSIX) || defined(TERMIO)
	extty.d_t.c_cflag  = tstty.d_t.c_cflag;
	extty.d_t.c_cflag &= ~ttylist[EX_IO][M_CONTROL].t_clrmask;
	extty.d_t.c_cflag |=  ttylist[EX_IO][M_CONTROL].t_setmask;

	edtty.d_t.c_cflag  = tstty.d_t.c_cflag;
	edtty.d_t.c_cflag &= ~ttylist[ED_IO][M_CONTROL].t_clrmask;
	edtty.d_t.c_cflag |=  ttylist[ED_IO][M_CONTROL].t_setmask;

	extty.d_t.c_lflag = tstty.d_t.c_lflag;
	extty.d_t.c_lflag &= ~ttylist[EX_IO][M_LINED].t_clrmask;
	extty.d_t.c_lflag |=  ttylist[EX_IO][M_LINED].t_setmask;

	edtty.d_t.c_lflag = tstty.d_t.c_lflag;
	edtty.d_t.c_lflag &= ~ttylist[ED_IO][M_LINED].t_clrmask;
	edtty.d_t.c_lflag |=  ttylist[ED_IO][M_LINED].t_setmask;

	extty.d_t.c_iflag = tstty.d_t.c_iflag;
	extty.d_t.c_iflag &= ~ttylist[EX_IO][M_INPUT].t_clrmask;
	extty.d_t.c_iflag |=  ttylist[EX_IO][M_INPUT].t_setmask;

	edtty.d_t.c_iflag = tstty.d_t.c_iflag;
	edtty.d_t.c_iflag &= ~ttylist[ED_IO][M_INPUT].t_clrmask;
	edtty.d_t.c_iflag |=  ttylist[ED_IO][M_INPUT].t_setmask;

	extty.d_t.c_oflag = tstty.d_t.c_oflag;
	extty.d_t.c_oflag &= ~ttylist[EX_IO][M_OUTPUT].t_clrmask;
	extty.d_t.c_oflag |=  ttylist[EX_IO][M_OUTPUT].t_setmask;

	edtty.d_t.c_oflag = tstty.d_t.c_oflag;
	edtty.d_t.c_oflag &= ~ttylist[ED_IO][M_OUTPUT].t_clrmask;
	edtty.d_t.c_oflag |=  ttylist[ED_IO][M_OUTPUT].t_setmask;

# else /* GSTTY */

	extty.d_t.sg_flags = tstty.d_t.sg_flags;

	extty.d_t.sg_flags &= ~ttylist[EX_IO][M_CONTROL].t_clrmask;
	extty.d_t.sg_flags |=  ttylist[EX_IO][M_CONTROL].t_setmask;

	if (T_Tabs)		/* order of &= and |= is important to XTABS */
	    extty.d_t.sg_flags &= ~XTABS;
	else 
	    extty.d_t.sg_flags |= XTABS;

	extty.d_lb = tstty.d_lb;
	extty.d_lb &= ~ttylist[EX_IO][M_LOCAL].t_clrmask;
	extty.d_lb |= ttylist[EX_IO][M_LOCAL].t_setmask;

	edtty.d_t.sg_flags = extty.d_t.sg_flags;
	if (T_Tabs) {	/* order of &= and |= is important to XTABS */
	    edtty.d_t.sg_flags &= 
		    ~(ttylist[ED_IO][M_CONTROL].t_clrmask|XTABS);
	    edtty.d_t.sg_flags |=   ttylist[ED_IO][M_CONTROL].t_setmask;
	}
	else {
	    edtty.d_t.sg_flags &= ~ttylist[ED_IO][M_CONTROL].t_clrmask;
	    edtty.d_t.sg_flags |= 
		    (ttylist[ED_IO][M_CONTROL].t_setmask|XTABS);
	}

	edtty.d_lb = tstty.d_lb;
	edtty.d_lb &= ~ttylist[ED_IO][M_LOCAL].t_clrmask;
	edtty.d_lb |= ttylist[ED_IO][M_LOCAL].t_setmask;

# endif /* TERMIO || POSIX */

	{
	    int i;

	    FUNC8(&tstty, ttychars[TS_IO]);
	    /*
	     * Check if the user made any changes.
	     * If he did, then propagate the changes to the
	     * edit and execute data structures.
	     */
	    for (i = 0; i < C_NCC; i++)
		if (ttychars[TS_IO][i] != ttychars[EX_IO][i])
		    break;
		
	    if (i != C_NCC || didsetty) {
		didsetty = 0;
		/*
		 * Propagate changes only to the unprotected chars
		 * that have been modified just now.
		 */
		for (i = 0; i < C_NCC; i++) {
		    if (!((ttylist[ED_IO][M_CHAR].t_setmask & FUNC0(i))) &&
			(ttychars[TS_IO][i] != ttychars[EX_IO][i]))
			ttychars[ED_IO][i] = ttychars[TS_IO][i];
		    if (ttylist[ED_IO][M_CHAR].t_clrmask & FUNC0(i))
			ttychars[ED_IO][i] = vdisable;
		}
		FUNC13(&edtty, ttychars[ED_IO]);

		for (i = 0; i < C_NCC; i++) {
		    if (!((ttylist[EX_IO][M_CHAR].t_setmask & FUNC0(i))) &&
			(ttychars[TS_IO][i] != ttychars[EX_IO][i]))
			ttychars[EX_IO][i] = ttychars[TS_IO][i];
		    if (ttylist[EX_IO][M_CHAR].t_clrmask & FUNC0(i))
			ttychars[EX_IO][i] = vdisable;
		}
		FUNC13(&extty, ttychars[EX_IO]);
	    }

	}
    }
    if (FUNC15(SHTTY, &edtty) == -1) {
# ifdef DEBUG_TTY
	xprintf("Rawmode: tty_setty: %s\n", strerror(errno));
# endif /* DEBUG_TTY */
	return(-1);
    }
#endif /* WINNT_NATIVE */
    Tty_raw_mode = 1;
    FUNC5();			/* flush any buffered output */
    return (0);
}