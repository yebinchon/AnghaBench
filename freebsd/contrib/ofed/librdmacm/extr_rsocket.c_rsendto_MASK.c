#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct sockaddr {int dummy; } ;
struct rsocket {scalar_t__ type; scalar_t__ state; int /*<<< orphan*/  slock; TYPE_1__* conn_dest; } ;
typedef  int ssize_t ;
typedef  int /*<<< orphan*/  socklen_t ;
struct TYPE_2__ {int /*<<< orphan*/  addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  EISCONN ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ SOCK_STREAM ; 
 scalar_t__ FUNC1 (struct sockaddr const*,int /*<<< orphan*/ *) ; 
 int FUNC2 (struct rsocket*,struct sockaddr const*,int /*<<< orphan*/ ,TYPE_1__**) ; 
 int FUNC3 (struct rsocket*) ; 
 int FUNC4 (struct rsocket*,void const*,size_t,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  idm ; 
 struct rsocket* FUNC7 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ rs_init ; 
 int FUNC8 (int,void const*,size_t,int) ; 

ssize_t FUNC9(int socket, const void *buf, size_t len, int flags,
		const struct sockaddr *dest_addr, socklen_t addrlen)
{
	struct rsocket *rs;
	int ret;

	rs = FUNC7(&idm, socket);
	if (rs->type == SOCK_STREAM) {
		if (dest_addr || addrlen)
			return FUNC0(EISCONN);

		return FUNC8(socket, buf, len, flags);
	}

	if (rs->state == rs_init) {
		ret = FUNC3(rs);
		if (ret)
			return ret;
	}

	FUNC5(&rs->slock);
	if (!rs->conn_dest || FUNC1(dest_addr, &rs->conn_dest->addr)) {
		ret = FUNC2(rs, dest_addr, addrlen, &rs->conn_dest);
		if (ret)
			goto out;
	}

	ret = FUNC4(rs, buf, len, flags);
out:
	FUNC6(&rs->slock);
	return ret;
}