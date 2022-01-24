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
typedef  int /*<<< orphan*/  sigset_t ;

/* Variables and functions */
 int /*<<< orphan*/  EX_IO ; 
 int /*<<< orphan*/  SHTTY ; 
 int /*<<< orphan*/  SIGINT ; 
 int /*<<< orphan*/  SIG_BLOCK ; 
 scalar_t__ Tty_raw_mode ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  extty ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  sigprocmask_cleanup ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (char*,int /*<<< orphan*/ ) ; 

int
FUNC10(void)
{				/* set tty in normal setup */
#ifdef WINNT_NATIVE
    do_nt_cooked_mode();
#else
    sigset_t set, oset;
    int res;

# ifdef _IBMR2
    tty_setdisc(SHTTY, EX_IO);
# endif /* _IBMR2 */

    if (!Tty_raw_mode)
	return (0);

    /* hold this for reseting tty */
    FUNC4(&set);
    FUNC3(&set, SIGINT);
    (void)FUNC5(SIG_BLOCK, &set, &oset);
    FUNC0(&oset, sigprocmask_cleanup);
    res = FUNC8(SHTTY, &extty);
    FUNC1(&oset);
    if (res == -1) {
# ifdef DEBUG_TTY
	xprintf("Cookedmode: tty_setty: %s\n", strerror(errno));
# endif /* DEBUG_TTY */
	return -1;
    }
#endif /* WINNT_NATIVE */

    Tty_raw_mode = 0;
    return (0);
}