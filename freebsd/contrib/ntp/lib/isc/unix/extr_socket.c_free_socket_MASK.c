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
struct TYPE_8__ {scalar_t__ impmagic; scalar_t__ magic; } ;
struct TYPE_10__ {scalar_t__ references; int recvcmsgbuflen; int sendcmsgbuflen; TYPE_2__* manager; int /*<<< orphan*/  lock; TYPE_1__ common; struct TYPE_10__* sendcmsgbuf; struct TYPE_10__* recvcmsgbuf; int /*<<< orphan*/  accept_list; int /*<<< orphan*/  send_list; int /*<<< orphan*/  recv_list; int /*<<< orphan*/  pending_accept; int /*<<< orphan*/  pending_send; int /*<<< orphan*/  pending_recv; int /*<<< orphan*/  connecting; } ;
typedef  TYPE_3__ isc__socket_t ;
struct TYPE_9__ {int /*<<< orphan*/  mctx; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,TYPE_3__*,int) ; 
 int /*<<< orphan*/  link ; 

__attribute__((used)) static void
FUNC6(isc__socket_t **socketp) {
	isc__socket_t *sock = *socketp;

	FUNC1(sock->references == 0);
	FUNC1(FUNC4(sock));
	FUNC1(!sock->connecting);
	FUNC1(!sock->pending_recv);
	FUNC1(!sock->pending_send);
	FUNC1(!sock->pending_accept);
	FUNC1(FUNC3(sock->recv_list));
	FUNC1(FUNC3(sock->send_list));
	FUNC1(FUNC3(sock->accept_list));
	FUNC1(!FUNC2(sock, link));

	if (sock->recvcmsgbuf != NULL)
		FUNC5(sock->manager->mctx, sock->recvcmsgbuf,
			    sock->recvcmsgbuflen);
	if (sock->sendcmsgbuf != NULL)
		FUNC5(sock->manager->mctx, sock->sendcmsgbuf,
			    sock->sendcmsgbuflen);

	sock->common.magic = 0;
	sock->common.impmagic = 0;

	FUNC0(&sock->lock);

	FUNC5(sock->manager->mctx, sock, sizeof(*sock));

	*socketp = NULL;
}