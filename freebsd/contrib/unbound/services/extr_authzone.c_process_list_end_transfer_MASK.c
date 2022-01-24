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
typedef  int /*<<< orphan*/  uint32_t ;
struct module_env {int dummy; } ;
struct auth_xfer {int notify_received; int notify_has_serial; TYPE_2__* task_transfer; int /*<<< orphan*/  lock; TYPE_1__* task_nextprobe; int /*<<< orphan*/  notify_serial; } ;
struct TYPE_4__ {int ixfr_fail; } ;
struct TYPE_3__ {int /*<<< orphan*/ * worker; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (struct auth_xfer*,struct module_env*,int*) ; 
 scalar_t__ FUNC3 (struct auth_xfer*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct auth_xfer*,struct module_env*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct auth_xfer*,struct module_env*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct auth_xfer*) ; 
 int /*<<< orphan*/  FUNC7 (struct auth_xfer*) ; 
 int /*<<< orphan*/  FUNC8 (struct auth_xfer*,struct module_env*) ; 

__attribute__((used)) static void
FUNC9(struct auth_xfer* xfr, struct module_env* env)
{
	int ixfr_fail = 0;
	if(FUNC2(xfr, env, &ixfr_fail)) {
		/* it worked! */
		FUNC0(xfr->task_transfer);

		/* we fetched the zone, move to wait task */
		FUNC6(xfr);

		if(xfr->notify_received && (!xfr->notify_has_serial ||
			(xfr->notify_has_serial && 
			FUNC3(xfr, xfr->notify_serial)))) {
			uint32_t sr = xfr->notify_serial;
			int has_sr = xfr->notify_has_serial;
			/* we received a notify while probe/transfer was
			 * in progress.  start a new probe and transfer */
			xfr->notify_received = 0;
			xfr->notify_has_serial = 0;
			xfr->notify_serial = 0;
			if(!FUNC5(xfr, env, NULL)) {
				/* if we couldn't start it, already in
				 * progress; restore notify serial,
				 * while xfr still locked */
				xfr->notify_received = 1;
				xfr->notify_has_serial = has_sr;
				xfr->notify_serial = sr;
				FUNC1(&xfr->lock);
			}
			return;
		} else {
			/* pick up the nextprobe task and wait (normail wait time) */
			if(xfr->task_nextprobe->worker == NULL)
				FUNC4(xfr, env, 0, 0);
		}
		FUNC1(&xfr->lock);
		return;
	}
	/* processing failed */
	/* when done, delete data from list */
	FUNC0(xfr->task_transfer);
	if(ixfr_fail) {
		xfr->task_transfer->ixfr_fail = 1;
	} else {
		FUNC7(xfr);
	}
	FUNC8(xfr, env);
}