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
struct module_env {int /*<<< orphan*/ * now; } ;
struct auth_xfer {int /*<<< orphan*/  lock; TYPE_2__* task_nextprobe; int /*<<< orphan*/  name; int /*<<< orphan*/  lease_time; scalar_t__ have_zone; TYPE_1__* task_probe; } ;
struct TYPE_4__ {int /*<<< orphan*/ * worker; } ;
struct TYPE_3__ {scalar_t__ have_new_lease; scalar_t__ only_lookup; scalar_t__ lookup_target; } ;

/* Variables and functions */
 int /*<<< orphan*/  AUTH_PROBE_TIMEOUT ; 
 scalar_t__ VERB_ALGO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct auth_xfer*) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,char*,char*) ; 
 scalar_t__ verbosity ; 
 int /*<<< orphan*/  FUNC4 (struct auth_xfer*) ; 
 int /*<<< orphan*/  FUNC5 (struct auth_xfer*) ; 
 scalar_t__ FUNC6 (struct auth_xfer*,struct module_env*) ; 
 int /*<<< orphan*/  FUNC7 (struct auth_xfer*,struct module_env*) ; 
 int /*<<< orphan*/  FUNC8 (struct auth_xfer*) ; 
 scalar_t__ FUNC9 (struct auth_xfer*,struct module_env*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct auth_xfer*,struct module_env*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC11(struct auth_xfer* xfr, struct module_env* env)
{
	/* are we doing hostname lookups? */
	while(xfr->task_probe->lookup_target) {
		if(FUNC6(xfr, env)) {
			/* wait for lookup to finish,
			 * note that the hostname may be in unbound's cache
			 * and we may then get an instant cache response,
			 * and that calls the callback just like a full
			 * lookup and lookup failures also call callback */
			if(verbosity >= VERB_ALGO) {
				char zname[255+1];
				FUNC0(xfr->name, zname);
				FUNC3(VERB_ALGO, "auth zone %s probe next target lookup", zname);
			}
			FUNC1(&xfr->lock);
			return;
		}
		FUNC7(xfr, env);
	}
	/* probe of list has ended.  Create or refresh the list of of
	 * allow_notify addrs */
	FUNC2(xfr);
	if(verbosity >= VERB_ALGO) {
		char zname[255+1];
		FUNC0(xfr->name, zname);
		FUNC3(VERB_ALGO, "auth zone %s probe: notify addrs updated", zname);
	}
	if(xfr->task_probe->only_lookup) {
		/* only wanted lookups for copy, stop probe and start wait */
		xfr->task_probe->only_lookup = 0;
		if(verbosity >= VERB_ALGO) {
			char zname[255+1];
			FUNC0(xfr->name, zname);
			FUNC3(VERB_ALGO, "auth zone %s probe: finished only_lookup", zname);
		}
		FUNC4(xfr);
		if(xfr->task_nextprobe->worker == NULL)
			FUNC10(xfr, env, 0, 0);
		FUNC1(&xfr->lock);
		return;
	}

	/* send probe packets */
	while(!FUNC5(xfr)) {
		if(FUNC9(xfr, env, AUTH_PROBE_TIMEOUT)) {
			/* successfully sent probe, wait for callback */
			FUNC1(&xfr->lock);
			return;
		}
		/* failed to send probe, next master */
		FUNC8(xfr);
	}

	/* done with probe sequence, wait */
	if(xfr->task_probe->have_new_lease) {
		/* if zone not updated, start the wait timer again */
		if(verbosity >= VERB_ALGO) {
			char zname[255+1];
			FUNC0(xfr->name, zname);
			FUNC3(VERB_ALGO, "auth_zone %s unchanged, new lease, wait", zname);
		}
		FUNC4(xfr);
		if(xfr->have_zone)
			xfr->lease_time = *env->now;
		if(xfr->task_nextprobe->worker == NULL)
			FUNC10(xfr, env, 0, 0);
	} else {
		if(verbosity >= VERB_ALGO) {
			char zname[255+1];
			FUNC0(xfr->name, zname);
			FUNC3(VERB_ALGO, "auth zone %s soa probe failed, wait to retry", zname);
		}
		/* we failed to send this as well, move to the wait task,
		 * use the shorter retry timeout */
		FUNC4(xfr);
		/* pick up the nextprobe task and wait */
		if(xfr->task_nextprobe->worker == NULL)
			FUNC10(xfr, env, 1, 0);
	}

	FUNC1(&xfr->lock);
}