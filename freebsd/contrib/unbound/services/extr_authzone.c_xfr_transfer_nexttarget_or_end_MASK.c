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
struct module_env {scalar_t__ worker; } ;
struct auth_xfer {int /*<<< orphan*/  lock; TYPE_2__* task_nextprobe; int /*<<< orphan*/  name; TYPE_1__* task_transfer; } ;
struct TYPE_4__ {int /*<<< orphan*/ * worker; } ;
struct TYPE_3__ {scalar_t__ worker; int /*<<< orphan*/  master; scalar_t__ lookup_target; } ;

/* Variables and functions */
 scalar_t__ VERB_ALGO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,char*,char*) ; 
 scalar_t__ verbosity ; 
 int /*<<< orphan*/  FUNC4 (struct auth_xfer*,struct module_env*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct auth_xfer*) ; 
 int /*<<< orphan*/  FUNC6 (struct auth_xfer*) ; 
 int /*<<< orphan*/  FUNC7 (struct auth_xfer*) ; 
 scalar_t__ FUNC8 (struct auth_xfer*,struct module_env*) ; 
 scalar_t__ FUNC9 (struct auth_xfer*,struct module_env*) ; 
 int /*<<< orphan*/  FUNC10 (struct auth_xfer*,struct module_env*) ; 
 int /*<<< orphan*/  FUNC11 (struct auth_xfer*) ; 

__attribute__((used)) static void
FUNC12(struct auth_xfer* xfr, struct module_env* env)
{
	FUNC2(xfr->task_transfer->worker == env->worker);

	/* are we performing lookups? */
	while(xfr->task_transfer->lookup_target) {
		if(FUNC9(xfr, env)) {
			/* wait for lookup to finish,
			 * note that the hostname may be in unbound's cache
			 * and we may then get an instant cache response,
			 * and that calls the callback just like a full
			 * lookup and lookup failures also call callback */
			if(verbosity >= VERB_ALGO) {
				char zname[255+1];
				FUNC0(xfr->name, zname);
				FUNC3(VERB_ALGO, "auth zone %s transfer next target lookup", zname);
			}
			FUNC1(&xfr->lock);
			return;
		}
		FUNC10(xfr, env);
	}

	/* initiate TCP and fetch the zone from the master */
	/* and set timeout on it */
	while(!FUNC7(xfr)) {
		xfr->task_transfer->master = FUNC5(xfr);
		if(FUNC8(xfr, env)) {
			/* successfully started, wait for callback */
			FUNC1(&xfr->lock);
			return;
		}
		/* failed to fetch, next master */
		FUNC11(xfr);
	}
	if(verbosity >= VERB_ALGO) {
		char zname[255+1];
		FUNC0(xfr->name, zname);
		FUNC3(VERB_ALGO, "auth zone %s transfer failed, wait", zname);
	}

	/* we failed to fetch the zone, move to wait task
	 * use the shorter retry timeout */
	FUNC6(xfr);

	/* pick up the nextprobe task and wait */
	if(xfr->task_nextprobe->worker == NULL)
		FUNC4(xfr, env, 1, 0);
	FUNC1(&xfr->lock);
}