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
struct rsocket {scalar_t__ type; int state; int opts; } ;

/* Variables and functions */
 int EBADF ; 
 int RS_OPT_SVC_ACTIVE ; 
 int /*<<< orphan*/  RS_SVC_REM_KEEPALIVE ; 
 int /*<<< orphan*/  SHUT_RDWR ; 
 scalar_t__ SOCK_STREAM ; 
 int /*<<< orphan*/  FUNC0 (struct rsocket*) ; 
 int /*<<< orphan*/  idm ; 
 struct rsocket* FUNC1 (int /*<<< orphan*/ *,int) ; 
 int rs_connected ; 
 int /*<<< orphan*/  FUNC2 (struct rsocket*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct rsocket*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  tcp_svc ; 

int FUNC5(int socket)
{
	struct rsocket *rs;

	rs = FUNC1(&idm, socket);
	if (!rs)
		return EBADF;
	if (rs->type == SOCK_STREAM) {
		if (rs->state & rs_connected)
			FUNC4(socket, SHUT_RDWR);
		else if (rs->opts & RS_OPT_SVC_ACTIVE)
			FUNC3(&tcp_svc, rs, RS_SVC_REM_KEEPALIVE);
	} else {
		FUNC0(rs);
	}

	FUNC2(rs);
	return 0;
}