#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {int /*<<< orphan*/  send_list; } ;
typedef  TYPE_1__ isc_task_t ;
struct TYPE_12__ {int attributes; TYPE_1__* ev_sender; } ;
typedef  TYPE_2__ isc_socketevent_t ;
typedef  TYPE_1__ isc_socket_t ;
typedef  int /*<<< orphan*/  isc_event_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ FUNC2 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,TYPE_2__*,int /*<<< orphan*/ ) ; 
 int ISC_SOCKEVENTATTR_ATTACHED ; 
 int /*<<< orphan*/  ev_link ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__**,int /*<<< orphan*/ **) ; 

__attribute__((used)) static void
FUNC6(isc_socket_t *sock, isc_socketevent_t **dev) {
	isc_task_t *task;

	FUNC1(dev != NULL && *dev != NULL);

	task = (*dev)->ev_sender;
	(*dev)->ev_sender = sock;

	if (FUNC2(*dev, ev_link))
		FUNC3(sock->send_list, *dev, ev_link);

	if (((*dev)->attributes & ISC_SOCKEVENTATTR_ATTACHED)
	    == ISC_SOCKEVENTATTR_ATTACHED)
		FUNC5(&task, (isc_event_t **)dev);
	else
		FUNC4(task, (isc_event_t **)dev);

	FUNC0(sock);
}