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
typedef  int /*<<< orphan*/  ioctl_t ;
typedef  int /*<<< orphan*/  Char ;

/* Variables and functions */
 int BUFSIZE ; 
 int /*<<< orphan*/  ERR_SYSTEM ; 
 int /*<<< orphan*/  FIONREAD ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  SHIN ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ Tty_raw_mode ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int,int) ; 
 int /*<<< orphan*/  progname ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 

int
FUNC9(void)
{
    static Char *Input_Line = NULL;
#ifdef SUNOS4
    long chrs = 0;
#else /* !SUNOS4 */
    /* 
     * *Everyone* else has an int, but SunOS wants long!
     * This breaks where int != long (alpha)
     */
    int chrs = 0;
#endif /* SUNOS4 */

    if (Input_Line)
	FUNC7(Input_Line);
    Input_Line = NULL;

    if (Tty_raw_mode)
	return 0;

#if defined(FIONREAD) && !defined(OREO)
    (void) ioctl(SHIN, FIONREAD, (ioctl_t) &chrs);
    if (chrs > 0) {
        char    buf[BUFSIZE];

	chrs = xread(SHIN, buf, min(chrs, BUFSIZE - 1));
	if (chrs > 0) {
	    buf[chrs] = '\0';
	    Input_Line = Strsave(str2short(buf));
	    PushMacro(Input_Line);
	}
#ifdef convex
        /* need to print errno message in case file is migrated */
        if (chrs < 0)
            stderror(ERR_SYSTEM, progname, strerror(errno));
#endif
    }
#endif  /* FIONREAD && !OREO */
    return chrs > 0;
}