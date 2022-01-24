#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {scalar_t__ fd; TYPE_2__* manager; int /*<<< orphan*/  pf; } ;
typedef  TYPE_3__ isc_socket_t ;
typedef  int /*<<< orphan*/  isc_result_t ;
struct TYPE_11__ {int /*<<< orphan*/  received_bytes; int /*<<< orphan*/  acceptbuffer; int /*<<< orphan*/  overlapped; TYPE_1__* adev; } ;
struct TYPE_9__ {int /*<<< orphan*/  iocp_total; } ;
struct TYPE_8__ {TYPE_3__* newsocket; } ;
typedef  scalar_t__ SOCKET ;
typedef  int /*<<< orphan*/  SOCKADDR_STORAGE ;
typedef  int /*<<< orphan*/  LPOVERLAPPED ;
typedef  int /*<<< orphan*/  LPDWORD ;
typedef  TYPE_4__ IoCompletionInfo ;

/* Variables and functions */
 scalar_t__ INVALID_SOCKET ; 
 int /*<<< orphan*/  IPPROTO_TCP ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ISC_R_FAILURE ; 
 int /*<<< orphan*/  ISC_R_SUCCESS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  SOCK_STREAM ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static isc_result_t
FUNC6(isc_socket_t *parent, IoCompletionInfo *lpo)
{
	isc_socket_t *nsock = lpo->adev->newsocket;
	SOCKET new_fd;

	/*
	 * AcceptEx() requires we pass in a socket.  Note that we carefully
	 * do not close the previous socket in case of an error message returned by
	 * our new socket() call.  If we return an error here, our caller will
	 * clean up.
	 */
	new_fd = FUNC5(parent->pf, SOCK_STREAM, IPPROTO_TCP);
	if (nsock->fd == INVALID_SOCKET) {
		return (ISC_R_FAILURE); // parent will ask windows for error message
	}
	FUNC2(nsock->fd);
	nsock->fd = new_fd;

	FUNC4(&lpo->overlapped, 0, sizeof(lpo->overlapped));

	FUNC0(parent->fd,
		    nsock->fd,				/* Accepted Socket */
		    lpo->acceptbuffer,			/* Buffer for initial Recv */
		    0,					/* Length of Buffer */
		    sizeof(SOCKADDR_STORAGE) + 16,	/* Local address length + 16 */
		    sizeof(SOCKADDR_STORAGE) + 16,	/* Remote address lengh + 16 */
		    (LPDWORD)&lpo->received_bytes,	/* Bytes Recved */
		    (LPOVERLAPPED)lpo			/* Overlapped structure */
		    );

	FUNC1(&nsock->manager->iocp_total);
	FUNC3(nsock);

	return (ISC_R_SUCCESS);
}