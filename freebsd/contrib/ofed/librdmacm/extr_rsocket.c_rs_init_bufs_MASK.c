#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  size_t uint32_t ;
struct rsocket {int rq_size; size_t sbuf_size; int sq_inline; int target_iomap_size; size_t rbuf_size; int opts; size_t sbuf_bytes_avail; int rbuf_free_offset; int rbuf_bytes_avail; int rseq_comp; scalar_t__ ctrl_max_seqno; scalar_t__ sq_size; scalar_t__ sqe_avail; TYPE_2__* smr; TYPE_1__* ssgl; void* sbuf; void* rmr; void* rbuf; int /*<<< orphan*/  cm_id; void* target_sgl; struct rs_iomap* target_iomap; void* target_buffer_list; void* target_mr; void* rmsg; } ;
struct rs_iomap {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  lkey; } ;
struct TYPE_3__ {uintptr_t addr; int /*<<< orphan*/  lkey; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENOMEM ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int RS_MAX_CTRL_MSG ; 
 size_t RS_MSG_SIZE ; 
 int RS_OPT_MSG_SEND ; 
 int RS_QP_CTRL_SIZE ; 
 int RS_SGL_SIZE ; 
 void* FUNC1 (size_t,int) ; 
 void* FUNC2 (size_t) ; 
 int /*<<< orphan*/  FUNC3 (void*,int /*<<< orphan*/ ,size_t) ; 
 TYPE_2__* FUNC4 (int /*<<< orphan*/ ,void*,size_t) ; 
 void* FUNC5 (int /*<<< orphan*/ ,void*,size_t) ; 

__attribute__((used)) static int FUNC6(struct rsocket *rs)
{
	uint32_t total_rbuf_size, total_sbuf_size;
	size_t len;

	rs->rmsg = FUNC1(rs->rq_size + 1, sizeof(*rs->rmsg));
	if (!rs->rmsg)
		return FUNC0(ENOMEM);

	total_sbuf_size = rs->sbuf_size;
	if (rs->sq_inline < RS_MAX_CTRL_MSG)
		total_sbuf_size += RS_MAX_CTRL_MSG * RS_QP_CTRL_SIZE;
	rs->sbuf = FUNC1(total_sbuf_size, 1);
	if (!rs->sbuf)
		return FUNC0(ENOMEM);

	rs->smr = FUNC4(rs->cm_id, rs->sbuf, total_sbuf_size);
	if (!rs->smr)
		return -1;

	len = sizeof(*rs->target_sgl) * RS_SGL_SIZE +
	      sizeof(*rs->target_iomap) * rs->target_iomap_size;
	rs->target_buffer_list = FUNC2(len);
	if (!rs->target_buffer_list)
		return FUNC0(ENOMEM);

	rs->target_mr = FUNC5(rs->cm_id, rs->target_buffer_list, len);
	if (!rs->target_mr)
		return -1;

	FUNC3(rs->target_buffer_list, 0, len);
	rs->target_sgl = rs->target_buffer_list;
	if (rs->target_iomap_size)
		rs->target_iomap = (struct rs_iomap *) (rs->target_sgl + RS_SGL_SIZE);

	total_rbuf_size = rs->rbuf_size;
	if (rs->opts & RS_OPT_MSG_SEND)
		total_rbuf_size += rs->rq_size * RS_MSG_SIZE;
	rs->rbuf = FUNC1(total_rbuf_size, 1);
	if (!rs->rbuf)
		return FUNC0(ENOMEM);

	rs->rmr = FUNC5(rs->cm_id, rs->rbuf, total_rbuf_size);
	if (!rs->rmr)
		return -1;

	rs->ssgl[0].addr = rs->ssgl[1].addr = (uintptr_t) rs->sbuf;
	rs->sbuf_bytes_avail = rs->sbuf_size;
	rs->ssgl[0].lkey = rs->ssgl[1].lkey = rs->smr->lkey;

	rs->rbuf_free_offset = rs->rbuf_size >> 1;
	rs->rbuf_bytes_avail = rs->rbuf_size >> 1;
	rs->sqe_avail = rs->sq_size - rs->ctrl_max_seqno;
	rs->rseq_comp = rs->rq_size >> 1;
	return 0;
}