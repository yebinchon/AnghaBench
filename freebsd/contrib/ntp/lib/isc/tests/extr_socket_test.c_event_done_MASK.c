#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  isc_task_t ;
struct TYPE_6__ {int /*<<< orphan*/  result; } ;
typedef  TYPE_1__ isc_socketevent_t ;
struct TYPE_7__ {TYPE_3__* ev_arg; } ;
typedef  TYPE_2__ isc_event_t ;
struct TYPE_8__ {int /*<<< orphan*/  done; int /*<<< orphan*/  result; } ;
typedef  TYPE_3__ completion_t ;

/* Variables and functions */
 int /*<<< orphan*/  ISC_TRUE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__**) ; 

__attribute__((used)) static void
FUNC2(isc_task_t *task, isc_event_t *event) {
	isc_socketevent_t *dev;
	completion_t *completion = event->ev_arg;

	FUNC0(task);

	dev = (isc_socketevent_t *) event;
	completion->result = dev->result;
	completion->done = ISC_TRUE;
	FUNC1(&event);
}