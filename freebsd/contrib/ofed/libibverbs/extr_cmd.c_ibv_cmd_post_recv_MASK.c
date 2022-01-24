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
struct ibv_sge {int dummy; } ;
struct ibv_recv_wr {int num_sge; struct ibv_recv_wr* next; int /*<<< orphan*/  sg_list; int /*<<< orphan*/  wr_id; } ;
struct ibv_qp {TYPE_1__* context; int /*<<< orphan*/  handle; } ;
struct ibv_post_recv_resp {unsigned int bad_wr; } ;
struct ibv_post_recv {unsigned int wr_count; unsigned int sge_count; int wqe_size; int /*<<< orphan*/  qp_handle; } ;
struct ibv_kern_recv_wr {int num_sge; int /*<<< orphan*/  wr_id; } ;
struct TYPE_2__ {int /*<<< orphan*/  cmd_fd; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ibv_post_recv*,int,int /*<<< orphan*/ ,struct ibv_post_recv_resp*,int) ; 
 int /*<<< orphan*/  POST_RECV ; 
 int /*<<< orphan*/  FUNC1 (struct ibv_post_recv_resp*,int) ; 
 struct ibv_post_recv* FUNC2 (int) ; 
 int errno ; 
 int /*<<< orphan*/  FUNC3 (struct ibv_sge*,int /*<<< orphan*/ ,int) ; 
 int FUNC4 (int /*<<< orphan*/ ,struct ibv_post_recv*,int) ; 

int FUNC5(struct ibv_qp *ibqp, struct ibv_recv_wr *wr,
		      struct ibv_recv_wr **bad_wr)
{
	struct ibv_post_recv     *cmd;
	struct ibv_post_recv_resp resp;
	struct ibv_recv_wr       *i;
	struct ibv_kern_recv_wr  *n, *tmp;
	struct ibv_sge           *s;
	unsigned                  wr_count = 0;
	unsigned                  sge_count = 0;
	int                       cmd_size;
	int                       ret = 0;

	for (i = wr; i; i = i->next) {
		wr_count++;
		sge_count += i->num_sge;
	}

	cmd_size = sizeof *cmd + wr_count * sizeof *n + sge_count * sizeof *s;
	cmd  = FUNC2(cmd_size);

	FUNC0(cmd, cmd_size, POST_RECV, &resp, sizeof resp);
	cmd->qp_handle = ibqp->handle;
	cmd->wr_count  = wr_count;
	cmd->sge_count = sge_count;
	cmd->wqe_size  = sizeof *n;

	n = (struct ibv_kern_recv_wr *) ((void *) cmd + sizeof *cmd);
	s = (struct ibv_sge *) (n + wr_count);

	tmp = n;
	for (i = wr; i; i = i->next) {
		tmp->wr_id   = i->wr_id;
		tmp->num_sge = i->num_sge;

		if (tmp->num_sge) {
			FUNC3(s, i->sg_list, tmp->num_sge * sizeof *s);
			s += tmp->num_sge;
		}

		tmp++;
	}

	resp.bad_wr = 0;
	if (FUNC4(ibqp->context->cmd_fd, cmd, cmd_size) != cmd_size)
		ret = errno;

	(void) FUNC1(&resp, sizeof resp);

	wr_count = resp.bad_wr;
	if (wr_count) {
		i = wr;
		while (--wr_count)
			i = i->next;
		*bad_wr = i;
	} else if (ret)
		*bad_wr = wr;

	return ret;
}