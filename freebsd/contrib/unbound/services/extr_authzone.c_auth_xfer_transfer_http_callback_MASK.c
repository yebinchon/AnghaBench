#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct module_env {TYPE_1__* outnet; } ;
struct comm_reply {int /*<<< orphan*/ * c; } ;
struct comm_point {int tcp_is_reading; int /*<<< orphan*/  buffer; } ;
struct auth_xfer {int /*<<< orphan*/  lock; TYPE_3__* task_transfer; } ;
struct TYPE_7__ {int /*<<< orphan*/ * cp; TYPE_2__* master; int /*<<< orphan*/  timer; struct module_env* env; } ;
struct TYPE_6__ {int host; } ;
struct TYPE_5__ {scalar_t__ want_to_quit; } ;

/* Variables and functions */
 int /*<<< orphan*/  AUTH_TRANSFER_TIMEOUT ; 
 int NETEVENT_DONE ; 
 int NETEVENT_NOERROR ; 
 int /*<<< orphan*/  VERB_ALGO ; 
 int /*<<< orphan*/  FUNC0 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct comm_point*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC7 (struct auth_xfer*,struct module_env*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,struct auth_xfer*) ; 
 int /*<<< orphan*/  FUNC12 (struct auth_xfer*) ; 
 int /*<<< orphan*/  FUNC13 (struct auth_xfer*,struct module_env*) ; 

int
FUNC14(struct comm_point* c, void* arg, int err,
	struct comm_reply* repinfo)
{
	struct auth_xfer* xfr = (struct auth_xfer*)arg;
	struct module_env* env;
	FUNC6(xfr->task_transfer);
	FUNC4(&xfr->lock);
	env = xfr->task_transfer->env;
	if(env->outnet->want_to_quit) {
		FUNC5(&xfr->lock);
		return 0; /* stop on quit */
	}
	FUNC10(VERB_ALGO, "auth zone transfer http callback");
	/* stop the timer */
	FUNC3(xfr->task_transfer->timer);

	if(err != NETEVENT_NOERROR && err != NETEVENT_DONE) {
		/* connection failed, closed, or timeout */
		/* stop this transfer, cleanup 
		 * and continue task_transfer*/
		FUNC10(VERB_ALGO, "http stopped, connection lost to %s",
			xfr->task_transfer->master->host);
	failed:
		/* delete transferred data from list */
		FUNC0(xfr->task_transfer);
		if(repinfo) repinfo->c = NULL; /* signal cp deleted to
				the routine calling this callback */
		FUNC1(xfr->task_transfer->cp);
		xfr->task_transfer->cp = NULL;
		FUNC12(xfr);
		FUNC13(xfr, env);
		return 0;
	}

	/* if it is good, link it into the list of data */
	/* if the link into list of data fails (malloc fail) cleanup and end */
	if(FUNC9(c->buffer) > 0) {
		FUNC10(VERB_ALGO, "auth zone http queued up %d bytes",
			(int)FUNC9(c->buffer));
		if(!FUNC11(c->buffer, xfr)) {
			FUNC10(VERB_ALGO, "http stopped to %s, malloc failed",
				xfr->task_transfer->master->host);
			goto failed;
		}
	}
	/* if the transfer is done now, disconnect and process the list */
	if(err == NETEVENT_DONE) {
		if(repinfo) repinfo->c = NULL; /* signal cp deleted to
				the routine calling this callback */
		FUNC1(xfr->task_transfer->cp);
		xfr->task_transfer->cp = NULL;
		FUNC7(xfr, env);
		return 0;
	}

	/* if we want to read more messages, setup the commpoint to read
	 * a DNS packet, and the timeout */
	FUNC5(&xfr->lock);
	c->tcp_is_reading = 1;
	FUNC8(c->buffer);
	FUNC2(c, -1, AUTH_TRANSFER_TIMEOUT);
	return 0;
}