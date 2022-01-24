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
struct process {int /*<<< orphan*/  p_command; scalar_t__ p_procid; } ;
struct command {int dummy; } ;
typedef  int /*<<< orphan*/  Char ;

/* Variables and functions */
 int ERR_BADJOB ; 
 int ERR_NAME ; 
 int /*<<< orphan*/  FUNC0 (struct command*) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC1 () ; 
 struct process* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct process*) ; 
 int /*<<< orphan*/  FUNC4 (struct process*,int) ; 
 int /*<<< orphan*/  FUNC5 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

void
FUNC7(Char **v, struct command *c)
{
    struct process *pp;

    FUNC0(c);
    FUNC1();
    ++v;
    do {
	pp = FUNC2(*v);
	if (!FUNC4(pp, 1)) {
	    pp->p_procid = 0;
	    FUNC5(ERR_NAME|ERR_BADJOB, pp->p_command, FUNC6(errno));
	    continue;
	}
	FUNC3(pp);
    } while (*v && *++v);
}