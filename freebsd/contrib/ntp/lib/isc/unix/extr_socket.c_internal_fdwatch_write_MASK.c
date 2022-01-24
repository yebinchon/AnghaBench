#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  isc_task_t ;
typedef  int /*<<< orphan*/  isc_socket_t ;
struct TYPE_8__ {scalar_t__ ev_type; scalar_t__ ev_sender; } ;
typedef  TYPE_1__ isc_event_t ;
struct TYPE_9__ {int pending_send; int (* fdwatchcb ) (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;scalar_t__ references; int /*<<< orphan*/  lock; int /*<<< orphan*/  fd; int /*<<< orphan*/  manager; int /*<<< orphan*/  fdwatcharg; } ;
typedef  TYPE_2__ isc__socket_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  IOEVENT ; 
 int /*<<< orphan*/  ISC_MSGSET_SOCKET ; 
 int /*<<< orphan*/  ISC_MSG_INTERNALSEND ; 
 scalar_t__ ISC_SOCKEVENT_INTW ; 
 int /*<<< orphan*/  ISC_SOCKFDWATCH_WRITE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  SELECT_POKE_WRITE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__**) ; 
 int /*<<< orphan*/  isc_msgcat ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,TYPE_1__*) ; 
 int FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC8(isc_task_t *me, isc_event_t *ev) {
	isc__socket_t *sock;
	int more_data;

	FUNC0(ev->ev_type == ISC_SOCKEVENT_INTW);

	/*
	 * Find out what socket this is and lock it.
	 */
	sock = (isc__socket_t *)ev->ev_sender;
	FUNC0(FUNC3(sock));

	FUNC1(&sock->lock);
	FUNC6(sock, NULL, IOEVENT,
		   isc_msgcat, ISC_MSGSET_SOCKET, ISC_MSG_INTERNALSEND,
		   "internal_fdwatch_write: task %p got event %p", me, ev);

	FUNC0(sock->pending_send == 1);

	FUNC2(&sock->lock);
	more_data = (sock->fdwatchcb)(me, (isc_socket_t *)sock,
				      sock->fdwatcharg, ISC_SOCKFDWATCH_WRITE);
	FUNC1(&sock->lock);

	sock->pending_send = 0;

	FUNC0(sock->references > 0);
	sock->references--;  /* the internal event is done with this socket */
	if (sock->references == 0) {
		FUNC2(&sock->lock);
		FUNC4(&sock);
		return;
	}

	if (more_data)
		FUNC5(sock->manager, sock->fd, SELECT_POKE_WRITE);

	FUNC2(&sock->lock);
}