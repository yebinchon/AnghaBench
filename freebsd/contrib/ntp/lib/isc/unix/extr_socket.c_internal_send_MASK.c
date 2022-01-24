#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  isc_task_t ;
typedef  int /*<<< orphan*/  isc_socketevent_t ;
struct TYPE_10__ {scalar_t__ ev_type; scalar_t__ ev_sender; } ;
typedef  TYPE_1__ isc_event_t ;
struct TYPE_11__ {int pending_send; scalar_t__ references; int /*<<< orphan*/  lock; int /*<<< orphan*/  fd; int /*<<< orphan*/  manager; int /*<<< orphan*/  send_list; } ;
typedef  TYPE_2__ isc__socket_t ;

/* Variables and functions */
#define  DOIO_HARD 130 
#define  DOIO_SOFT 129 
#define  DOIO_SUCCESS 128 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  IOEVENT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ISC_MSGSET_SOCKET ; 
 int /*<<< orphan*/  ISC_MSG_INTERNALSEND ; 
 scalar_t__ ISC_SOCKEVENT_INTW ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  SELECT_POKE_WRITE ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__**) ; 
 int FUNC7 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  isc_msgcat ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,TYPE_1__*) ; 

__attribute__((used)) static void
FUNC11(isc_task_t *me, isc_event_t *ev) {
	isc_socketevent_t *dev;
	isc__socket_t *sock;

	FUNC0(ev->ev_type == ISC_SOCKEVENT_INTW);

	/*
	 * Find out what socket this is and lock it.
	 */
	sock = (isc__socket_t *)ev->ev_sender;
	FUNC0(FUNC5(sock));

	FUNC3(&sock->lock);
	FUNC10(sock, NULL, IOEVENT,
		   isc_msgcat, ISC_MSGSET_SOCKET, ISC_MSG_INTERNALSEND,
		   "internal_send: task %p got event %p", me, ev);

	FUNC0(sock->pending_send == 1);
	sock->pending_send = 0;

	FUNC0(sock->references > 0);
	sock->references--;  /* the internal event is done with this socket */
	if (sock->references == 0) {
		FUNC4(&sock->lock);
		FUNC6(&sock);
		return;
	}

	/*
	 * Try to do as much I/O as possible on this socket.  There are no
	 * limits here, currently.
	 */
	dev = FUNC2(sock->send_list);
	while (dev != NULL) {
		switch (FUNC7(sock, dev)) {
		case DOIO_SOFT:
			goto poke;

		case DOIO_HARD:
		case DOIO_SUCCESS:
			FUNC9(sock, &dev);
			break;
		}

		dev = FUNC2(sock->send_list);
	}

 poke:
	if (!FUNC1(sock->send_list))
		FUNC8(sock->manager, sock->fd, SELECT_POKE_WRITE);

	FUNC4(&sock->lock);
}