#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct sockaddr {int dummy; } ;
struct rsocket {scalar_t__ type; scalar_t__ state; int /*<<< orphan*/  slock; int /*<<< orphan*/  conn_dest; int /*<<< orphan*/  udp_sock; TYPE_3__* cm_id; } ;
typedef  int /*<<< orphan*/  socklen_t ;
struct TYPE_4__ {int /*<<< orphan*/  dst_addr; } ;
struct TYPE_5__ {TYPE_1__ addr; } ;
struct TYPE_6__ {TYPE_2__ route; } ;

/* Variables and functions */
 int /*<<< orphan*/  EBADF ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ SOCK_STREAM ; 
 int FUNC1 (int /*<<< orphan*/ ,struct sockaddr const*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct rsocket*,struct sockaddr const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC3 (struct rsocket*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  idm ; 
 struct rsocket* FUNC6 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,struct sockaddr const*,int /*<<< orphan*/ ) ; 
 int FUNC8 (struct rsocket*) ; 
 scalar_t__ rs_init ; 

int FUNC9(int socket, const struct sockaddr *addr, socklen_t addrlen)
{
	struct rsocket *rs;
	int ret;

	rs = FUNC6(&idm, socket);
	if (!rs)
		return FUNC0(EBADF);
	if (rs->type == SOCK_STREAM) {
		FUNC7(&rs->cm_id->route.addr.dst_addr, addr, addrlen);
		ret = FUNC8(rs);
	} else {
		if (rs->state == rs_init) {
			ret = FUNC3(rs);
			if (ret)
				return ret;
		}

		FUNC4(&rs->slock);
		ret = FUNC1(rs->udp_sock, addr, addrlen);
		if (!ret)
			ret = FUNC2(rs, addr, addrlen, &rs->conn_dest);
		FUNC5(&rs->slock);
	}
	return ret;
}