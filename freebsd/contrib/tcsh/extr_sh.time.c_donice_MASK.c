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
struct command {int dummy; } ;
typedef  int /*<<< orphan*/  Char ;

/* Variables and functions */
 int /*<<< orphan*/  ERR_SYSTEM ; 
 int /*<<< orphan*/  PRIO_PROCESS ; 
 int /*<<< orphan*/  FUNC0 (struct command*) ; 
 scalar_t__ FUNC1 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ errno ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 

void
FUNC7(Char **v, struct command *c)
{
    Char *cp;
    int	    nval = 0;

    FUNC0(c);
    v++, cp = *v++;
    if (cp == 0)
	nval = 4;
    else if (*v	== 0 &&	FUNC1("+-", cp[0]))
	nval = FUNC2(cp);
#if defined(HAVE_SETPRIORITY) && defined(PRIO_PROCESS)
    if (setpriority(PRIO_PROCESS, 0, nval) == -1 && errno)
	stderror(ERR_SYSTEM, "setpriority", strerror(errno));
#else /* !HAVE_SETPRIORITY || !PRIO_PROCESS */
    (void) FUNC3(nval);
#endif /* HAVE_SETPRIORITY && PRIO_PROCESS */
}