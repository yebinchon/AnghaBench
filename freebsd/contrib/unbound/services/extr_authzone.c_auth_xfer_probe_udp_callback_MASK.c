#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint32_t ;
struct module_env {TYPE_1__* outnet; } ;
struct comm_reply {int /*<<< orphan*/ * c; } ;
struct comm_point {int /*<<< orphan*/  buffer; } ;
struct auth_xfer {TYPE_4__* task_probe; int /*<<< orphan*/  name; int /*<<< orphan*/  lock; TYPE_3__* task_transfer; } ;
struct auth_master {int dummy; } ;
struct TYPE_8__ {int have_new_lease; int /*<<< orphan*/ * cp; int /*<<< orphan*/  timer; struct module_env* env; } ;
struct TYPE_7__ {TYPE_2__* masters; int /*<<< orphan*/ * worker; } ;
struct TYPE_6__ {scalar_t__ http; } ;
struct TYPE_5__ {scalar_t__ want_to_quit; } ;

/* Variables and functions */
 int /*<<< orphan*/  LDNS_RR_TYPE_SOA ; 
 int NETEVENT_NOERROR ; 
 scalar_t__ VERB_ALGO ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct auth_xfer*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__,char*,...) ; 
 scalar_t__ verbosity ; 
 struct auth_master* FUNC8 (struct auth_xfer*) ; 
 int /*<<< orphan*/  FUNC9 (struct auth_xfer*) ; 
 int /*<<< orphan*/  FUNC10 (struct auth_xfer*) ; 
 int /*<<< orphan*/  FUNC11 (struct auth_xfer*,struct module_env*) ; 
 scalar_t__ FUNC12 (struct auth_xfer*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC13 (struct auth_xfer*,struct module_env*,struct auth_master*) ; 

int
FUNC14(struct comm_point* c, void* arg, int err,
	struct comm_reply* repinfo)
{
	struct auth_xfer* xfr = (struct auth_xfer*)arg;
	struct module_env* env;
	FUNC6(xfr->task_probe);
	FUNC4(&xfr->lock);
	env = xfr->task_probe->env;
	if(env->outnet->want_to_quit) {
		FUNC5(&xfr->lock);
		return 0; /* stop on quit */
	}

	/* the comm_point_udp_callback is in a for loop for NUM_UDP_PER_SELECT
	 * and we set rep.c=NULL to stop if from looking inside the commpoint*/
	repinfo->c = NULL;
	/* stop the timer */
	FUNC2(xfr->task_probe->timer);

	/* see if we got a packet and what that means */
	if(err == NETEVENT_NOERROR) {
		uint32_t serial = 0;
		if(FUNC0(c->buffer, LDNS_RR_TYPE_SOA, xfr,
			&serial)) {
			/* successful lookup */
			if(verbosity >= VERB_ALGO) {
				char buf[256];
				FUNC3(xfr->name, buf);
				FUNC7(VERB_ALGO, "auth zone %s: soa probe "
					"serial is %u", buf, (unsigned)serial);
			}
			/* see if this serial indicates that the zone has
			 * to be updated */
			if(FUNC12(xfr, serial)) {
				/* if updated, start the transfer task, if needed */
				FUNC7(VERB_ALGO, "auth_zone updated, start transfer");
				if(xfr->task_transfer->worker == NULL) {
					struct auth_master* master =
						FUNC8(xfr);
					/* if we have download URLs use them
					 * in preference to this master we
					 * just probed the SOA from */
					if(xfr->task_transfer->masters &&
						xfr->task_transfer->masters->http)
						master = NULL;
					FUNC9(xfr);
					FUNC13(xfr, env, master);
					return 0;

				}
				/* other tasks are running, we don't do this anymore */
				FUNC9(xfr);
				FUNC5(&xfr->lock);
				/* return, we don't sent a reply to this udp packet,
				 * and we setup the tasks to do next */
				return 0;
			} else {
				FUNC7(VERB_ALGO, "auth_zone master reports unchanged soa serial");
				/* we if cannot find updates amongst the
				 * masters, this means we then have a new lease
				 * on the zone */
				xfr->task_probe->have_new_lease = 1;
			}
		} else {
			if(verbosity >= VERB_ALGO) {
				char buf[256];
				FUNC3(xfr->name, buf);
				FUNC7(VERB_ALGO, "auth zone %s: bad reply to soa probe", buf);
			}
		}
	} else {
		if(verbosity >= VERB_ALGO) {
			char buf[256];
			FUNC3(xfr->name, buf);
			FUNC7(VERB_ALGO, "auth zone %s: soa probe failed", buf);
		}
	}
	
	/* failed lookup or not an update */
	/* delete commpoint so a new one is created, with a fresh port nr */
	FUNC1(xfr->task_probe->cp);
	xfr->task_probe->cp = NULL;

	/* if the result was not a successfull probe, we need
	 * to send the next one */
	FUNC10(xfr);
	FUNC11(xfr, env);
	return 0;
}