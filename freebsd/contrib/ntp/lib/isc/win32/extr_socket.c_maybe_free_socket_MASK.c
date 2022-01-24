#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {scalar_t__ pending_iocp; scalar_t__ pending_recv; scalar_t__ pending_send; scalar_t__ pending_accept; scalar_t__ references; int pending_connect; scalar_t__ fd; int /*<<< orphan*/  lock; int /*<<< orphan*/  accept_list; int /*<<< orphan*/  send_list; int /*<<< orphan*/  recv_list; } ;
typedef  TYPE_1__ isc_socket_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ INVALID_SOCKET ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__**,int) ; 

__attribute__((used)) static void
FUNC6(isc_socket_t **socketp, int lineno) {
	isc_socket_t *sock = *socketp;
	*socketp = NULL;

	FUNC1(FUNC4(sock));
	FUNC0(sock);

	if (sock->pending_iocp > 0
	    || sock->pending_recv > 0
	    || sock->pending_send > 0
	    || sock->pending_accept > 0
	    || sock->references > 0
	    || sock->pending_connect == 1
	    || !FUNC2(sock->recv_list)
	    || !FUNC2(sock->send_list)
	    || !FUNC2(sock->accept_list)
	    || sock->fd != INVALID_SOCKET) {
		FUNC3(&sock->lock);
		return;
	}
	FUNC3(&sock->lock);

	FUNC5(&sock, lineno);
}