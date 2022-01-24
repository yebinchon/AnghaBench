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
struct pingpong_dest {int sockfd; int /*<<< orphan*/  srqn; int /*<<< orphan*/  send_psn; int /*<<< orphan*/  send_qpn; int /*<<< orphan*/  recv_qpn; int /*<<< orphan*/  lid; int /*<<< orphan*/  gid; } ;
typedef  int /*<<< orphan*/  gid ;
struct TYPE_2__ {struct pingpong_dest* rem_dest; } ;

/* Variables and functions */
 char* ADDR_FORMAT ; 
 int /*<<< orphan*/  AF_INET6 ; 
 int MSG_SIZE ; 
 int /*<<< orphan*/  MSG_SSCAN ; 
 TYPE_1__ ctx ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int FUNC4 (int,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(int sockfd, int index)
{
	struct pingpong_dest *rem_dest;
	char msg[MSG_SIZE];
	char gid[33];
	int n = 0, r;

	while (n < MSG_SIZE) {
		r = FUNC4(sockfd, msg + n, MSG_SIZE - n);
		if (r < 0) {
			FUNC2("client read");
			FUNC0(stderr,
				"%d/%d: Couldn't read remote address [%d]\n",
				n, MSG_SIZE, index);
			return -1;
		}
		n += r;
	}

	rem_dest = &ctx.rem_dest[index];
	FUNC5(msg, MSG_SSCAN, &rem_dest->lid, &rem_dest->recv_qpn,
		&rem_dest->send_qpn, &rem_dest->send_psn, &rem_dest->srqn, gid);

	FUNC6(gid, &rem_dest->gid);
	FUNC1(AF_INET6, &rem_dest->gid, gid, sizeof(gid));
	FUNC3(ADDR_FORMAT, "remote", rem_dest->lid, rem_dest->recv_qpn,
		rem_dest->send_qpn, rem_dest->send_psn, rem_dest->srqn,
		gid);

	rem_dest->sockfd = sockfd;
	return 0;
}