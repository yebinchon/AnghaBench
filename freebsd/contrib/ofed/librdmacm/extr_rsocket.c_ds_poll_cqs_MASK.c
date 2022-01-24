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
struct rsocket {size_t rmsg_tail; int rq_size; struct ds_qp* qp_list; scalar_t__ sqe_avail; scalar_t__ rqe_avail; struct ds_smsg* smsg_free; scalar_t__ sbuf; struct ds_rmsg* dmsg; } ;
struct ibv_wc {scalar_t__ status; int /*<<< orphan*/  wr_id; scalar_t__ byte_len; } ;
struct ibv_grh {int dummy; } ;
struct ds_smsg {struct ds_smsg* next; } ;
struct ds_rmsg {scalar_t__ length; scalar_t__ offset; struct ds_qp* qp; } ;
struct ds_qp {TYPE_1__* cm_id; } ;
struct TYPE_2__ {int /*<<< orphan*/  recv_cq; } ;

/* Variables and functions */
 scalar_t__ IBV_WC_SUCCESS ; 
 struct ds_qp* FUNC0 (struct ds_qp*) ; 
 int /*<<< orphan*/  FUNC1 (struct rsocket*,struct ds_qp*,scalar_t__) ; 
 scalar_t__ FUNC2 (struct ds_qp*,struct ibv_wc*) ; 
 int FUNC3 (int /*<<< orphan*/ ,int,struct ibv_wc*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct rsocket *rs)
{
	struct ds_qp *qp;
	struct ds_smsg *smsg;
	struct ds_rmsg *rmsg;
	struct ibv_wc wc;
	int ret, cnt;

	if (!(qp = rs->qp_list))
		return;

	do {
		cnt = 0;
		do {
			ret = FUNC3(qp->cm_id->recv_cq, 1, &wc);
			if (ret <= 0) {
				qp = FUNC0(qp);
				continue;
			}

			if (FUNC5(wc.wr_id)) {
				if (rs->rqe_avail && wc.status == IBV_WC_SUCCESS &&
				    FUNC2(qp, &wc)) {
					rs->rqe_avail--;
					rmsg = &rs->dmsg[rs->rmsg_tail];
					rmsg->qp = qp;
					rmsg->offset = FUNC4(wc.wr_id);
					rmsg->length = wc.byte_len - sizeof(struct ibv_grh);
					if (++rs->rmsg_tail == rs->rq_size + 1)
						rs->rmsg_tail = 0;
				} else {
					FUNC1(rs, qp, FUNC4(wc.wr_id));
				}
			} else {
				smsg = (struct ds_smsg *) (rs->sbuf + FUNC4(wc.wr_id));
				smsg->next = rs->smsg_free;
				rs->smsg_free = smsg;
				rs->sqe_avail++;
			}

			qp = FUNC0(qp);
			if (!rs->rqe_avail && rs->sqe_avail) {
				rs->qp_list = qp;
				return;
			}
			cnt++;
		} while (qp != rs->qp_list);
	} while (cnt);
}