#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct sockaddr {int dummy; } ;
struct rsocket {scalar_t__ type; int /*<<< orphan*/  udp_sock; int /*<<< orphan*/  cm_id; } ;
typedef  int /*<<< orphan*/  socklen_t ;

/* Variables and functions */
 int /*<<< orphan*/  EBADF ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ SOCK_STREAM ; 
 int FUNC1 (int /*<<< orphan*/ ,struct sockaddr*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  idm ; 
 struct rsocket* FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct sockaddr*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

int FUNC5(int socket, struct sockaddr *addr, socklen_t *addrlen)
{
	struct rsocket *rs;

	rs = FUNC2(&idm, socket);
	if (!rs)
		return FUNC0(EBADF);
	if (rs->type == SOCK_STREAM) {
		FUNC4(addr, FUNC3(rs->cm_id), addrlen);
		return 0;
	} else {
		return FUNC1(rs->udp_sock, addr, addrlen);
	}
}