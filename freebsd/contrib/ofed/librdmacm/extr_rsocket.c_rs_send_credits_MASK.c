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
struct TYPE_6__ {scalar_t__ length; int /*<<< orphan*/  key; scalar_t__ addr; } ;
struct rsocket {int rq_size; int rbuf_bytes_avail; int rbuf_size; int opts; size_t rbuf_free_offset; int sq_inline; int remote_sge; scalar_t__ rseq_no; TYPE_3__ remote_sgl; TYPE_2__* smr; TYPE_1__* rmr; int /*<<< orphan*/ * rbuf; int /*<<< orphan*/  ctrl_seqno; scalar_t__ rseq_comp; } ;
struct rs_sge {uintptr_t addr; int key; int length; } ;
struct ibv_sge {uintptr_t addr; int length; scalar_t__ lkey; } ;
typedef  int /*<<< orphan*/  sge ;
struct TYPE_5__ {scalar_t__ lkey; } ;
struct TYPE_4__ {int rkey; } ;

/* Variables and functions */
 int IBV_SEND_INLINE ; 
 int RS_OPT_MSG_SEND ; 
 int RS_OPT_SWAP_SGL ; 
 int /*<<< orphan*/  RS_OP_SGL ; 
 void* FUNC0 (int) ; 
 uintptr_t FUNC1 (uintptr_t) ; 
 int /*<<< orphan*/  FUNC2 (struct rs_sge*,struct rs_sge*,int) ; 
 struct rs_sge* FUNC3 (struct rsocket*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (struct rsocket*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct rsocket*,struct ibv_sge*,int,int /*<<< orphan*/ ,int,scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(struct rsocket *rs)
{
	struct ibv_sge ibsge;
	struct rs_sge sge, *sge_buf;
	int flags;

	rs->ctrl_seqno++;
	rs->rseq_comp = rs->rseq_no + (rs->rq_size >> 1);
	if (rs->rbuf_bytes_avail >= (rs->rbuf_size >> 1)) {
		if (rs->opts & RS_OPT_MSG_SEND)
			rs->ctrl_seqno++;

		if (!(rs->opts & RS_OPT_SWAP_SGL)) {
			sge.addr = (uintptr_t) &rs->rbuf[rs->rbuf_free_offset];
			sge.key = rs->rmr->rkey;
			sge.length = rs->rbuf_size >> 1;
		} else {
			sge.addr = FUNC1((uintptr_t) &rs->rbuf[rs->rbuf_free_offset]);
			sge.key = FUNC0(rs->rmr->rkey);
			sge.length = FUNC0(rs->rbuf_size >> 1);
		}

		if (rs->sq_inline < sizeof sge) {
			sge_buf = FUNC3(rs);
			FUNC2(sge_buf, &sge, sizeof sge);
			ibsge.addr = (uintptr_t) sge_buf;
			ibsge.lkey = rs->smr->lkey;
			flags = 0;
		} else {
			ibsge.addr = (uintptr_t) &sge;
			ibsge.lkey = 0;
			flags = IBV_SEND_INLINE;
		}
		ibsge.length = sizeof(sge);

		FUNC6(rs, &ibsge, 1,
			FUNC4(RS_OP_SGL, rs->rseq_no + rs->rq_size), flags,
			rs->remote_sgl.addr + rs->remote_sge * sizeof(struct rs_sge),
			rs->remote_sgl.key);

		rs->rbuf_bytes_avail -= rs->rbuf_size >> 1;
		rs->rbuf_free_offset += rs->rbuf_size >> 1;
		if (rs->rbuf_free_offset >= rs->rbuf_size)
			rs->rbuf_free_offset = 0;
		if (++rs->remote_sge == rs->remote_sgl.length)
			rs->remote_sge = 0;
	} else {
		FUNC5(rs, FUNC4(RS_OP_SGL, rs->rseq_no + rs->rq_size));
	}
}