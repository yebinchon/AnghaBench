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
struct auth_xfer {int /*<<< orphan*/  allow_notify_list; struct auth_xfer* task_transfer; scalar_t__ chunks_first; int /*<<< orphan*/  timer; int /*<<< orphan*/  cp; int /*<<< orphan*/  masters; struct auth_xfer* task_probe; struct auth_xfer* task_nextprobe; struct auth_xfer* name; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct auth_xfer*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct auth_xfer*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC6(struct auth_xfer* xfr)
{
	if(!xfr) return;
	FUNC5(&xfr->lock);
	FUNC4(xfr->name);
	if(xfr->task_nextprobe) {
		FUNC3(xfr->task_nextprobe->timer);
		FUNC4(xfr->task_nextprobe);
	}
	if(xfr->task_probe) {
		FUNC1(xfr->task_probe->masters);
		FUNC2(xfr->task_probe->cp);
		FUNC3(xfr->task_probe->timer);
		FUNC4(xfr->task_probe);
	}
	if(xfr->task_transfer) {
		FUNC1(xfr->task_transfer->masters);
		FUNC2(xfr->task_transfer->cp);
		FUNC3(xfr->task_transfer->timer);
		if(xfr->task_transfer->chunks_first) {
			FUNC0(xfr->task_transfer);
		}
		FUNC4(xfr->task_transfer);
	}
	FUNC1(xfr->allow_notify_list);
	FUNC4(xfr);
}