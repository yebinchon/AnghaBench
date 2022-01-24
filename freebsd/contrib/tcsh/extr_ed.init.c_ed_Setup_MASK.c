#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
struct varent {int /*<<< orphan*/ * vec; } ;
typedef  int /*<<< orphan*/  sigset_t ;
struct TYPE_14__ {int c_iflag; int c_oflag; int c_cflag; int c_lflag; int sg_flags; int /*<<< orphan*/  c_line; } ;
struct TYPE_16__ {int d_lb; TYPE_1__ d_t; } ;
struct TYPE_15__ {int t_clrmask; int t_setmask; } ;

/* Variables and functions */
 int C_NCC ; 
 size_t ED_IO ; 
 size_t EX_IO ; 
 scalar_t__ Expand ; 
 scalar_t__ Hist_num ; 
 int /*<<< orphan*/  MODE_INSERT ; 
 int /*<<< orphan*/  MODE_REPLACE ; 
 size_t M_CONTROL ; 
 size_t M_INPUT ; 
 size_t M_LINED ; 
 size_t M_LOCAL ; 
 size_t M_OUTPUT ; 
 int /*<<< orphan*/  NTTYDISC ; 
 int /*<<< orphan*/  SHTTY ; 
 int /*<<< orphan*/  SIG_UNBLOCK ; 
 int /*<<< orphan*/  SIG_WINDOW ; 
 int /*<<< orphan*/  STRinputmode ; 
 int /*<<< orphan*/  STRinsert ; 
 int /*<<< orphan*/  STRkillring ; 
 int /*<<< orphan*/  STRoverwrite ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 size_t TS_IO ; 
 int /*<<< orphan*/  T_Speed ; 
 scalar_t__ T_Tabs ; 
 int /*<<< orphan*/  Tty_eight_bit ; 
 int XTABS ; 
 int /*<<< orphan*/  _PC_VDISABLE ; 
 scalar_t__ _POSIX_VDISABLE ; 
 struct varent* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 TYPE_3__ edtty ; 
 int /*<<< orphan*/  errno ; 
 TYPE_3__ extty ; 
 long FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  inputmode ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC10 (int /*<<< orphan*/ ) ; 
 TYPE_3__ tstty ; 
 scalar_t__ FUNC11 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_3__*,unsigned char*) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_3__*) ; 
 scalar_t__ FUNC15 (TYPE_3__*) ; 
 int FUNC16 (int /*<<< orphan*/ ,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_3__*,unsigned char*) ; 
 int FUNC18 (int /*<<< orphan*/ ,TYPE_3__*) ; 
 unsigned char** ttychars ; 
 TYPE_2__** ttylist ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ) ; 
 unsigned char vdisable ; 
 int /*<<< orphan*/  window_change ; 
 int /*<<< orphan*/  FUNC20 (char*,int) ; 

int
FUNC21(int rst)
{
    static int havesetup = 0;
    struct varent *imode;

    if (havesetup) 	/* if we have never been called */
	return(0);

#if defined(POSIX) && defined(_PC_VDISABLE) && !defined(BSD4_4) && \
    !defined(WINNT_NATIVE)
    { 
	long pcret;

	if ((pcret = fpathconf(SHTTY, _PC_VDISABLE)) == -1L)
	    vdisable = (unsigned char) _POSIX_VDISABLE;
	else 
	    vdisable = (unsigned char) pcret;
	if (vdisable != (unsigned char) _POSIX_VDISABLE && rst != 0)
	    for (rst = 0; rst < C_NCC; rst++) {
		if (ttychars[ED_IO][rst] == (unsigned char) _POSIX_VDISABLE)
		    ttychars[ED_IO][rst] = vdisable;
		if (ttychars[EX_IO][rst] == (unsigned char) _POSIX_VDISABLE)
		    ttychars[EX_IO][rst] = vdisable;
	    }
    }
#else /* ! POSIX || !_PC_VDISABLE || BSD4_4 || WINNT_NATIVE */
    vdisable = (unsigned char) _POSIX_VDISABLE;
#endif /* POSIX && _PC_VDISABLE && !BSD4_4 && !WINNT_NATIVE */
	
    if ((imode = FUNC2(STRinputmode)) != NULL && imode->vec != NULL) {
	if (!FUNC1(*(imode->vec), STRinsert))
	    inputmode = MODE_INSERT;
	else if (!FUNC1(*(imode->vec), STRoverwrite))
	    inputmode = MODE_REPLACE;
    }
    else
	inputmode = MODE_INSERT;
    FUNC3();
    Hist_num = 0;
    Expand = 0;
    FUNC0(FUNC5(FUNC19(STRkillring)));

#ifndef WINNT_NATIVE
    if (FUNC16(SHTTY, &extty) == -1) {
# ifdef DEBUG_TTY
	xprintf("ed_Setup: tty_getty: %s\n", strerror(errno));
# endif /* DEBUG_TTY */
	return(-1);
    }

    tstty = edtty = extty;

    T_Speed = FUNC14(&extty);
    T_Tabs = FUNC15(&extty);
    Tty_eight_bit = FUNC13(&extty);

# if defined(POSIX) || defined(TERMIO)
    extty.d_t.c_iflag &= ~ttylist[EX_IO][M_INPUT].t_clrmask;
    extty.d_t.c_iflag |=  ttylist[EX_IO][M_INPUT].t_setmask;

    extty.d_t.c_oflag &= ~ttylist[EX_IO][M_OUTPUT].t_clrmask;
    extty.d_t.c_oflag |=  ttylist[EX_IO][M_OUTPUT].t_setmask;

    extty.d_t.c_cflag &= ~ttylist[EX_IO][M_CONTROL].t_clrmask;
    extty.d_t.c_cflag |=  ttylist[EX_IO][M_CONTROL].t_setmask;

    extty.d_t.c_lflag &= ~ttylist[EX_IO][M_LINED].t_clrmask;
    extty.d_t.c_lflag |=  ttylist[EX_IO][M_LINED].t_setmask;

#  if defined(IRIX3_3) && SYSVREL < 4
    extty.d_t.c_line = NTTYDISC;
#  endif /* IRIX3_3 && SYSVREL < 4 */

# else	/* GSTTY */		/* V7, Berkeley style tty */

    if (T_Tabs) {	/* order of &= and |= is important to XTABS */
	extty.d_t.sg_flags &= ~(ttylist[EX_IO][M_CONTROL].t_clrmask|XTABS);
	extty.d_t.sg_flags |=   ttylist[EX_IO][M_CONTROL].t_setmask;
    }
    else {
	extty.d_t.sg_flags &= ~ttylist[EX_IO][M_CONTROL].t_clrmask;
	extty.d_t.sg_flags |= (ttylist[EX_IO][M_CONTROL].t_setmask|XTABS);
    }

    extty.d_lb &= ~ttylist[EX_IO][M_LOCAL].t_clrmask;
    extty.d_lb |=  ttylist[EX_IO][M_LOCAL].t_setmask;

# endif /* GSTTY */
    /*
     * Reset the tty chars to reasonable defaults
     * If they are disabled, then enable them.
     */
    if (rst) {
	if (FUNC11(&tstty)) {
	    FUNC12(&tstty, ttychars[TS_IO]);
	    /*
	     * Don't affect CMIN and CTIME for the editor mode
	     */
	    for (rst = 0; rst < C_NCC - 2; rst++) 
		if (ttychars[TS_IO][rst] != vdisable &&
		    ttychars[ED_IO][rst] != vdisable)
		    ttychars[ED_IO][rst] = ttychars[TS_IO][rst];
	    for (rst = 0; rst < C_NCC; rst++) 
		if (ttychars[TS_IO][rst] != vdisable &&
		    ttychars[EX_IO][rst] != vdisable)
		    ttychars[EX_IO][rst] = ttychars[TS_IO][rst];
	}
	FUNC17(&extty, ttychars[EX_IO]);
	if (FUNC18(SHTTY, &extty) == -1) {
# ifdef DEBUG_TTY
	    xprintf("ed_Setup: tty_setty: %s\n", strerror(errno));
# endif /* DEBUG_TTY */
	    return(-1);
	}
    }
    else
	FUNC17(&extty, ttychars[EX_IO]);

# ifdef SIG_WINDOW
    {
	sigset_t set;
	(void)signal(SIG_WINDOW, window_change);	/* for window systems */
	sigemptyset(&set);
	sigaddset(&set, SIG_WINDOW);
	(void)sigprocmask(SIG_UNBLOCK, &set, NULL);
    }
# endif
#else /* WINNT_NATIVE */
# ifdef DEBUG
    if (rst)
	xprintf("rst received in ed_Setup() %d\n", rst);
# endif
#endif /* WINNT_NATIVE */
    havesetup = 1;
    return(0);
}