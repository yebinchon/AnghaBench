#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct module_env {scalar_t__* now; TYPE_1__* outnet; } ;
struct auth_xfer {scalar_t__ lease_time; scalar_t__ expiry; int /*<<< orphan*/  lock; int /*<<< orphan*/  zone_expired; scalar_t__ have_zone; TYPE_2__* task_nextprobe; } ;
struct TYPE_4__ {struct module_env* env; } ;
struct TYPE_3__ {scalar_t__ want_to_quit; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct auth_xfer*,struct module_env*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (struct auth_xfer*) ; 
 int /*<<< orphan*/  FUNC5 (struct auth_xfer*,struct module_env*,int /*<<< orphan*/ *) ; 

void
FUNC6(void* arg)
{
	struct auth_xfer* xfr = (struct auth_xfer*)arg;
	struct module_env* env;
	FUNC3(xfr->task_nextprobe);
	FUNC1(&xfr->lock);
	env = xfr->task_nextprobe->env;
	if(env->outnet->want_to_quit) {
		FUNC2(&xfr->lock);
		return; /* stop on quit */
	}

	/* see if zone has expired, and if so, also set auth_zone expired */
	if(xfr->have_zone && !xfr->zone_expired &&
	   *env->now >= xfr->lease_time + xfr->expiry) {
		FUNC2(&xfr->lock);
		FUNC0(xfr, env, 1);
		FUNC1(&xfr->lock);
	}

	FUNC4(xfr);

	if(!FUNC5(xfr, env, NULL)) {
		/* not started because already in progress */
		FUNC2(&xfr->lock);
	}
}