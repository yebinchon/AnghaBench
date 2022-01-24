#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
struct in6_pktinfo {scalar_t__ ipi6_ifindex; } ;
typedef  int /*<<< orphan*/  isc_task_t ;
struct TYPE_14__ {int /*<<< orphan*/  attributes; struct in6_pktinfo pktinfo; int /*<<< orphan*/  address; int /*<<< orphan*/ * ev_sender; } ;
typedef  TYPE_1__ isc_socketevent_t ;
typedef  int /*<<< orphan*/  isc_sockaddr_t ;
typedef  int /*<<< orphan*/  isc_result_t ;
typedef  scalar_t__ isc_boolean_t ;
struct TYPE_15__ {scalar_t__ type; int /*<<< orphan*/  lock; int /*<<< orphan*/  send_list; int /*<<< orphan*/  fd; int /*<<< orphan*/  manager; int /*<<< orphan*/  pending_send; } ;
typedef  TYPE_2__ isc__socket_t ;

/* Variables and functions */
#define  DOIO_HARD 130 
#define  DOIO_SOFT 129 
#define  DOIO_SUCCESS 128 
 int /*<<< orphan*/  EVENT ; 
 scalar_t__ ISC_FALSE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ISC_MSGSET_SOCKET ; 
 int /*<<< orphan*/  ISC_MSG_PKTINFOPROVIDED ; 
 int /*<<< orphan*/  ISC_R_INPROGRESS ; 
 int /*<<< orphan*/  ISC_R_SUCCESS ; 
 int /*<<< orphan*/  ISC_SOCKEVENTATTR_ATTACHED ; 
 int /*<<< orphan*/  ISC_SOCKEVENTATTR_PKTINFO ; 
 unsigned int ISC_SOCKFLAG_IMMEDIATE ; 
 unsigned int ISC_SOCKFLAG_NORETRY ; 
 scalar_t__ ISC_TRUE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  SELECT_POKE_WRITE ; 
 int /*<<< orphan*/  TRACE ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (TYPE_2__*,TYPE_1__*) ; 
 int /*<<< orphan*/  ev_link ; 
 int /*<<< orphan*/  isc_msgcat ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ isc_sockettype_udp ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*,TYPE_1__**) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,TYPE_2__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,TYPE_1__*,...) ; 

__attribute__((used)) static isc_result_t
FUNC12(isc__socket_t *sock, isc_socketevent_t *dev, isc_task_t *task,
	    isc_sockaddr_t *address, struct in6_pktinfo *pktinfo,
	    unsigned int flags)
{
	int io_state;
	isc_boolean_t have_lock = ISC_FALSE;
	isc_task_t *ntask = NULL;
	isc_result_t result = ISC_R_SUCCESS;

	dev->ev_sender = task;

	FUNC10(address, sock, dev);
	if (pktinfo != NULL) {
		dev->attributes |= ISC_SOCKEVENTATTR_PKTINFO;
		dev->pktinfo = *pktinfo;

		if (!FUNC6(&dev->address) &&
		    !FUNC5(&dev->address)) {
			FUNC11(sock, NULL, TRACE, &isc_msgcat,
				   ISC_MSGSET_SOCKET, ISC_MSG_PKTINFOPROVIDED,
				   "pktinfo structure provided, ifindex %u "
				   "(set to 0)", pktinfo->ipi6_ifindex);

			/*
			 * Set the pktinfo index to 0 here, to let the
			 * kernel decide what interface it should send on.
			 */
			dev->pktinfo.ipi6_ifindex = 0;
		}
	}

	if (sock->type == isc_sockettype_udp)
		io_state = FUNC4(sock, dev);
	else {
		FUNC2(&sock->lock);
		have_lock = ISC_TRUE;

		if (FUNC0(sock->send_list))
			io_state = FUNC4(sock, dev);
		else
			io_state = DOIO_SOFT;
	}

	switch (io_state) {
	case DOIO_SOFT:
		/*
		 * We couldn't send all or part of the request right now, so
		 * queue it unless ISC_SOCKFLAG_NORETRY is set.
		 */
		if ((flags & ISC_SOCKFLAG_NORETRY) == 0) {
			FUNC7(task, &ntask);
			dev->attributes |= ISC_SOCKEVENTATTR_ATTACHED;

			if (!have_lock) {
				FUNC2(&sock->lock);
				have_lock = ISC_TRUE;
			}

			/*
			 * Enqueue the request.  If the socket was previously
			 * not being watched, poke the watcher to start
			 * paying attention to it.
			 */
			if (FUNC0(sock->send_list) &&
			    !sock->pending_send)
				FUNC8(sock->manager, sock->fd,
					    SELECT_POKE_WRITE);
			FUNC1(sock->send_list, dev, ev_link);

			FUNC11(sock, NULL, EVENT, NULL, 0, 0,
				   "socket_send: event %p -> task %p",
				   dev, ntask);

			if ((flags & ISC_SOCKFLAG_IMMEDIATE) != 0)
				result = ISC_R_INPROGRESS;
			break;
		}

	case DOIO_HARD:
	case DOIO_SUCCESS:
		if ((flags & ISC_SOCKFLAG_IMMEDIATE) == 0)
			FUNC9(sock, &dev);
		break;
	}

	if (have_lock)
		FUNC3(&sock->lock);

	return (result);
}