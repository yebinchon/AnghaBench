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
struct module_env {TYPE_1__* outnet; } ;
struct auth_xfer {TYPE_2__* task_probe; int /*<<< orphan*/  lock; int /*<<< orphan*/  name; } ;
struct TYPE_4__ {int timeout; int /*<<< orphan*/ * cp; struct module_env* env; } ;
struct TYPE_3__ {scalar_t__ want_to_quit; } ;

/* Variables and functions */
 int AUTH_PROBE_TIMEOUT_STOP ; 
 scalar_t__ VERB_ALGO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,char*,char*) ; 
 scalar_t__ verbosity ; 
 int /*<<< orphan*/  FUNC6 (struct auth_xfer*) ; 
 int /*<<< orphan*/  FUNC7 (struct auth_xfer*,struct module_env*) ; 
 scalar_t__ FUNC8 (struct auth_xfer*,struct module_env*,int) ; 

void
FUNC9(void* arg)
{
	struct auth_xfer* xfr = (struct auth_xfer*)arg;
	struct module_env* env;
	FUNC4(xfr->task_probe);
	FUNC2(&xfr->lock);
	env = xfr->task_probe->env;
	if(env->outnet->want_to_quit) {
		FUNC3(&xfr->lock);
		return; /* stop on quit */
	}

	if(verbosity >= VERB_ALGO) {
		char zname[255+1];
		FUNC1(xfr->name, zname);
		FUNC5(VERB_ALGO, "auth zone %s soa probe timeout", zname);
	}
	if(xfr->task_probe->timeout <= AUTH_PROBE_TIMEOUT_STOP) {
		/* try again with bigger timeout */
		if(FUNC8(xfr, env, xfr->task_probe->timeout*2)) {
			FUNC3(&xfr->lock);
			return;
		}
	}
	/* delete commpoint so a new one is created, with a fresh port nr */
	FUNC0(xfr->task_probe->cp);
	xfr->task_probe->cp = NULL;

	/* too many timeouts (or fail to send), move to next or end */
	FUNC6(xfr);
	FUNC7(xfr, env);
}