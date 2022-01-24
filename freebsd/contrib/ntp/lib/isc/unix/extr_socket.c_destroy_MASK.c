#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/  lock; int /*<<< orphan*/  shutdown_ok; int /*<<< orphan*/  socklist; scalar_t__ maxsocks; } ;
typedef  TYPE_1__ isc__socketmgr_t ;
struct TYPE_10__ {int fd; int /*<<< orphan*/ * connect_ev; int /*<<< orphan*/  send_list; int /*<<< orphan*/  recv_list; int /*<<< orphan*/  accept_list; TYPE_1__* manager; } ;
typedef  TYPE_2__ isc__socket_t ;

/* Variables and functions */
 int /*<<< orphan*/  CREATION ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ISC_MSGSET_SOCKET ; 
 int /*<<< orphan*/  ISC_MSG_DESTROYING ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__**) ; 
 int /*<<< orphan*/  isc_msgcat ; 
 int /*<<< orphan*/  link ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static void
FUNC10(isc__socket_t **sockp) {
	int fd;
	isc__socket_t *sock = *sockp;
	isc__socketmgr_t *manager = sock->manager;

	FUNC9(sock, NULL, CREATION, isc_msgcat, ISC_MSGSET_SOCKET,
		   ISC_MSG_DESTROYING, "destroying");

	FUNC0(FUNC1(sock->accept_list));
	FUNC0(FUNC1(sock->recv_list));
	FUNC0(FUNC1(sock->send_list));
	FUNC0(sock->connect_ev == NULL);
	FUNC4(sock->fd == -1 || sock->fd < (int)manager->maxsocks);

	if (sock->fd >= 0) {
		fd = sock->fd;
		sock->fd = -1;
		FUNC7(manager, sock, fd);
	}

	FUNC3(&manager->lock);

	FUNC2(manager->socklist, sock, link);

#ifdef USE_WATCHER_THREAD
	if (ISC_LIST_EMPTY(manager->socklist))
		SIGNAL(&manager->shutdown_ok);
#endif /* USE_WATCHER_THREAD */

	/* can't unlock manager as its memory context is still used */
	FUNC8(sockp);

	FUNC6(&manager->lock);
}