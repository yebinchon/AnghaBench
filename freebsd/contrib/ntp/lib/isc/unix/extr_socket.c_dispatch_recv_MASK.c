#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  isc_task_t ;
struct TYPE_8__ {int /*<<< orphan*/ * ev_sender; } ;
typedef  TYPE_1__ isc_socketevent_t ;
typedef  int /*<<< orphan*/  isc_event_t ;
struct TYPE_10__ {TYPE_2__* ev_arg; int /*<<< orphan*/  ev_action; TYPE_2__* ev_sender; } ;
struct TYPE_9__ {int pending_recv; scalar_t__ type; int /*<<< orphan*/  references; TYPE_3__ readable_ev; int /*<<< orphan*/ * fdwatchtask; int /*<<< orphan*/  recv_list; } ;
typedef  TYPE_2__ isc__socket_t ;
typedef  TYPE_3__ intev_t ;

/* Variables and functions */
 int /*<<< orphan*/  EVENT ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  internal_fdwatch_read ; 
 int /*<<< orphan*/  internal_recv ; 
 scalar_t__ isc_sockettype_fdwatch ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,TYPE_1__*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC4(isc__socket_t *sock) {
	intev_t *iev;
	isc_socketevent_t *ev;
	isc_task_t *sender;

	FUNC0(!sock->pending_recv);

	if (sock->type != isc_sockettype_fdwatch) {
		ev = FUNC1(sock->recv_list);
		if (ev == NULL)
			return;
		FUNC3(sock, NULL, EVENT, NULL, 0, 0,
			   "dispatch_recv:  event %p -> task %p",
			   ev, ev->ev_sender);
		sender = ev->ev_sender;
	} else {
		sender = sock->fdwatchtask;
	}

	sock->pending_recv = 1;
	iev = &sock->readable_ev;

	sock->references++;
	iev->ev_sender = sock;
	if (sock->type == isc_sockettype_fdwatch)
		iev->ev_action = internal_fdwatch_read;
	else
		iev->ev_action = internal_recv;
	iev->ev_arg = sock;

	FUNC2(sender, (isc_event_t **)&iev);
}