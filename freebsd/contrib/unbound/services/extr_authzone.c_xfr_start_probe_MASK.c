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
struct module_env {int /*<<< orphan*/ * worker; } ;
struct auth_xfer {TYPE_2__* task_probe; TYPE_1__* task_transfer; } ;
struct auth_master {int dummy; } ;
struct TYPE_4__ {scalar_t__ have_new_lease; int /*<<< orphan*/ * cp; struct module_env* env; int /*<<< orphan*/ * worker; int /*<<< orphan*/ * masters; scalar_t__ only_lookup; } ;
struct TYPE_3__ {int /*<<< orphan*/ * worker; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct auth_xfer*,struct module_env*) ; 
 int /*<<< orphan*/  FUNC2 (struct auth_xfer*,struct auth_master*) ; 
 int /*<<< orphan*/  FUNC3 (struct auth_xfer*) ; 
 int /*<<< orphan*/  FUNC4 (struct auth_xfer*,struct module_env*,struct auth_master*) ; 

__attribute__((used)) static int
FUNC5(struct auth_xfer* xfr, struct module_env* env,
	struct auth_master* spec)
{
	/* see if we need to start a probe (or maybe it is already in
	 * progress (due to notify)) */
	if(xfr->task_probe->worker == NULL) {
		if(!FUNC0(xfr->task_probe->masters) &&
			!(xfr->task_probe->only_lookup &&
			xfr->task_probe->masters != NULL)) {
			/* useless to pick up task_probe, no masters to
			 * probe. Instead attempt to pick up task transfer */
			if(xfr->task_transfer->worker == NULL) {
				FUNC4(xfr, env, spec);
				return 1;
			}
			/* task transfer already in progress */
			return 0;
		}

		/* pick up the probe task ourselves */
		xfr->task_probe->worker = env->worker;
		xfr->task_probe->env = env;
		xfr->task_probe->cp = NULL;

		/* start the task */
		/* have not seen a new lease yet, this scan */
		xfr->task_probe->have_new_lease = 0;
		/* if this was a timeout, no specific first master to scan */
		/* otherwise, spec is nonNULL the notified master, scan
		 * first and also transfer first from it */
		FUNC2(xfr, spec);
		/* setup to start the lookup of hostnames of masters afresh */
		FUNC3(xfr);
		/* send the probe packet or next send, or end task */
		FUNC1(xfr, env);
		return 1;
	}
	return 0;
}