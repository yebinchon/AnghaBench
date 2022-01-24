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
struct TYPE_4__ {int /*<<< orphan*/  mesh; } ;
struct worker {TYPE_2__ env; } ;
struct outbound_entry {int /*<<< orphan*/ * qsent; struct module_qstate* qstate; } ;
struct module_qstate {TYPE_1__* env; } ;
struct comm_reply {int dummy; } ;
struct comm_point {int /*<<< orphan*/  buffer; } ;
struct TYPE_3__ {struct worker* worker; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ LDNS_PACKET_QUERY ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int NETEVENT_NOERROR ; 
 int NETEVENT_TIMEOUT ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct outbound_entry*,struct comm_reply*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct worker*,int /*<<< orphan*/ *) ; 

int 
FUNC6(struct comm_point* c, void* arg, int error, 
	struct comm_reply* reply_info)
{
	struct module_qstate* q = (struct module_qstate*)arg;
	struct worker* worker = q->env->worker;
	struct outbound_entry e;
	e.qstate = q;
	e.qsent = NULL;

	if(error != 0) {
		FUNC3(worker->env.mesh, &e, reply_info, error);
		FUNC5(worker, NULL);
		return 0;
	}
	/* sanity check. */
	if(!FUNC2(FUNC4(c->buffer))
		|| FUNC0(FUNC4(c->buffer)) != 
			LDNS_PACKET_QUERY
		|| FUNC1(FUNC4(c->buffer)) > 1) {
		/* error becomes timeout for the module as if this reply
		 * never arrived. */
		FUNC3(worker->env.mesh, &e, reply_info, 
			NETEVENT_TIMEOUT);
		FUNC5(worker, NULL);
		return 0;
	}
	FUNC3(worker->env.mesh, &e, reply_info, NETEVENT_NOERROR);
	FUNC5(worker, NULL);
	return 0;
}