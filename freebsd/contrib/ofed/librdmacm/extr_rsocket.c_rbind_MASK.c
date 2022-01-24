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
struct rsocket {scalar_t__ type; scalar_t__ state; int /*<<< orphan*/  udp_sock; int /*<<< orphan*/  cm_id; } ;
typedef  int /*<<< orphan*/  socklen_t ;

/* Variables and functions */
 int /*<<< orphan*/  EBADF ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ SOCK_STREAM ; 
 int FUNC1 (int /*<<< orphan*/ ,struct sockaddr const*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct rsocket*) ; 
 int /*<<< orphan*/  idm ; 
 struct rsocket* FUNC3 (int /*<<< orphan*/ *,int) ; 
 int FUNC4 (int /*<<< orphan*/ ,struct sockaddr*) ; 
 scalar_t__ rs_bound ; 
 scalar_t__ rs_init ; 

int FUNC5(int socket, const struct sockaddr *addr, socklen_t addrlen)
{
	struct rsocket *rs;
	int ret;

	rs = FUNC3(&idm, socket);
	if (!rs)
		return FUNC0(EBADF);
	if (rs->type == SOCK_STREAM) {
		ret = FUNC4(rs->cm_id, (struct sockaddr *) addr);
		if (!ret)
			rs->state = rs_bound;
	} else {
		if (rs->state == rs_init) {
			ret = FUNC2(rs);
			if (ret)
				return ret;
		}
		ret = FUNC1(rs->udp_sock, addr, addrlen);
	}
	return ret;
}