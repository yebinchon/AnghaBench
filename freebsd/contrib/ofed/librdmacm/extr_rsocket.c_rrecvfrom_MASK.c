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
struct rsocket {scalar_t__ type; int /*<<< orphan*/  rlock; } ;
typedef  int ssize_t ;
typedef  int /*<<< orphan*/  socklen_t ;

/* Variables and functions */
 scalar_t__ SOCK_DGRAM ; 
 int FUNC0 (struct rsocket*,void*,size_t,int,struct sockaddr*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  idm ; 
 struct rsocket* FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int,struct sockaddr*,int /*<<< orphan*/ *) ; 
 int FUNC5 (int,void*,size_t,int) ; 

ssize_t FUNC6(int socket, void *buf, size_t len, int flags,
		  struct sockaddr *src_addr, socklen_t *addrlen)
{
	struct rsocket *rs;
	int ret;

	rs = FUNC3(&idm, socket);
	if (rs->type == SOCK_DGRAM) {
		FUNC1(&rs->rlock);
		ret = FUNC0(rs, buf, len, flags, src_addr, addrlen);
		FUNC2(&rs->rlock);
		return ret;
	}

	ret = FUNC5(socket, buf, len, flags);
	if (ret > 0 && src_addr)
		FUNC4(socket, src_addr, addrlen);

	return ret;
}