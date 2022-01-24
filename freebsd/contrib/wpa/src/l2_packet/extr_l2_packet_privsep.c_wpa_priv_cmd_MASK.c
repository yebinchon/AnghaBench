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
typedef  int u8 ;
struct msghdr {int msg_iovlen; int msg_namelen; int /*<<< orphan*/ * msg_name; struct iovec* msg_iov; } ;
struct l2_packet_data {int /*<<< orphan*/  fd; int /*<<< orphan*/  priv_addr; } ;
struct iovec {int* iov_base; int iov_len; } ;
typedef  int /*<<< orphan*/  msg ;
typedef  int /*<<< orphan*/  cmd ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_ERROR ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC0 (struct msghdr*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,struct msghdr*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct l2_packet_data *l2, int cmd,
			const void *data, size_t data_len)
{
	struct msghdr msg;
	struct iovec io[2];

	io[0].iov_base = &cmd;
	io[0].iov_len = sizeof(cmd);
	io[1].iov_base = (u8 *) data;
	io[1].iov_len = data_len;

	FUNC0(&msg, 0, sizeof(msg));
	msg.msg_iov = io;
	msg.msg_iovlen = data ? 2 : 1;
	msg.msg_name = &l2->priv_addr;
	msg.msg_namelen = sizeof(l2->priv_addr);

	if (FUNC1(l2->fd, &msg, 0) < 0) {
		FUNC3(MSG_ERROR, "L2: sendmsg(cmd): %s", FUNC2(errno));
		return -1;
	}

	return 0;
}