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
 struct process* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct process*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

void
FUNC5(Char **v, struct command *c)
{
    struct process *pp;

    FUNC0(c);
    pp = FUNC1(v[0]);
    if (!FUNC2(pp, 0)) {
	pp->p_procid = 0;
	FUNC3(ERR_NAME|ERR_BADJOB, pp->p_command, FUNC4(errno));
    }
}