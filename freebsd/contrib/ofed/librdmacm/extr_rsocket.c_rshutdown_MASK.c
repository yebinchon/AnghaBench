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
struct rsocket {int opts; int fd_flags; int state; TYPE_1__* cm_id; int /*<<< orphan*/  ctrl_seqno; } ;
struct TYPE_2__ {int /*<<< orphan*/  recv_cq; } ;

/* Variables and functions */
 int /*<<< orphan*/  EBADF ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int O_NONBLOCK ; 
 int RS_CTRL_DISCONNECT ; 
 int RS_CTRL_SHUTDOWN ; 
 int RS_OPT_SVC_ACTIVE ; 
 int /*<<< orphan*/  RS_OP_CTRL ; 
 int /*<<< orphan*/  RS_SVC_REM_KEEPALIVE ; 
 int SHUT_RDWR ; 
 int SHUT_WR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  idm ; 
 struct rsocket* FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  rs_conn_all_sends_done ; 
 int /*<<< orphan*/  rs_conn_can_send_ctrl ; 
 int rs_connected ; 
 scalar_t__ FUNC3 (struct rsocket*) ; 
 int rs_disconnected ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,struct rsocket*,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct rsocket*,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct rsocket*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int rs_readable ; 
 int /*<<< orphan*/  FUNC8 (struct rsocket*,int) ; 
 int rs_writable ; 
 int /*<<< orphan*/  tcp_svc ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*) ; 

int FUNC10(int socket, int how)
{
	struct rsocket *rs;
	int ctrl, ret = 0;

	rs = FUNC2(&idm, socket);
	if (!rs)
		return FUNC0(EBADF);
	if (rs->opts & RS_OPT_SVC_ACTIVE)
		FUNC5(&tcp_svc, rs, RS_SVC_REM_KEEPALIVE);

	if (rs->fd_flags & O_NONBLOCK)
		FUNC8(rs, 0);

	if (rs->state & rs_connected) {
		if (how == SHUT_RDWR) {
			ctrl = RS_CTRL_DISCONNECT;
			rs->state &= ~(rs_readable | rs_writable);
		} else if (how == SHUT_WR) {
			rs->state &= ~rs_writable;
			ctrl = (rs->state & rs_readable) ?
				RS_CTRL_SHUTDOWN : RS_CTRL_DISCONNECT;
		} else {
			rs->state &= ~rs_readable;
			if (rs->state & rs_writable)
				goto out;
			ctrl = RS_CTRL_DISCONNECT;
		}
		if (!FUNC3(rs)) {
			ret = FUNC7(rs, 0, rs_conn_can_send_ctrl);
			if (ret)
				goto out;
		}

		if ((rs->state & rs_connected) && FUNC3(rs)) {
			rs->ctrl_seqno++;
			ret = FUNC6(rs, FUNC4(RS_OP_CTRL, ctrl));
		}
	}

	if (rs->state & rs_connected)
		FUNC7(rs, 0, rs_conn_all_sends_done);

out:
	if ((rs->fd_flags & O_NONBLOCK) && (rs->state & rs_connected))
		FUNC8(rs, rs->fd_flags);

	if (rs->state & rs_disconnected) {
		/* Generate event by flushing receives to unblock rpoll */
		FUNC1(rs->cm_id->recv_cq, 0);
		FUNC9(rs->cm_id);
	}

	return ret;
}