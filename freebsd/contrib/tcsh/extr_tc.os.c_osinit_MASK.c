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
struct sigstack {scalar_t__ ss_onstack; scalar_t__ ss_sp; } ;

/* Variables and functions */
 int COMPAT_EXEC ; 
 int /*<<< orphan*/  SIGIO ; 
 int /*<<< orphan*/  SIG_IGN ; 
 int FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct sigstack*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int) ; 

void
FUNC9(void)
{
#ifdef OREO
    set42sig();
    setcompat(getcompat() & ~COMPAT_EXEC);
    signal(SIGIO, SIG_IGN);		/* ignore SIGIO */
#endif /* OREO */

#ifdef aiws
    {
	struct sigstack inst;
	inst.ss_sp = xmalloc(4192) + 4192;
	inst.ss_onstack = 0;
	sigstack(&inst, NULL);
    }
#endif /* aiws */

#ifdef apollo
    (void) isapad();
#endif

#ifdef _SX
    /* 
     * kill(SIGCONT) problems, don't know what this syscall does
     * [schott@rzg.mpg.de]
     */
    syscall(151, getpid(), getpid());
#endif /* _SX */
}