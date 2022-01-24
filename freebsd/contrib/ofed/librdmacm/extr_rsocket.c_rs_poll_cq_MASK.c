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
typedef  int /*<<< orphan*/  uint16_t ;
struct rsocket {int state; size_t rmsg_tail; int sbuf_bytes_avail; int /*<<< orphan*/  err; int /*<<< orphan*/  sqe_avail; int /*<<< orphan*/  ctrl_max_seqno; int /*<<< orphan*/  rq_size; TYPE_2__* rmsg; int /*<<< orphan*/  sseq_comp; scalar_t__ rbuf_size; scalar_t__ rbuf; TYPE_1__* cm_id; } ;
struct rs_iomap {int dummy; } ;
struct ibv_wc {scalar_t__ status; int wc_flags; int /*<<< orphan*/  wr_id; int /*<<< orphan*/  imm_data; } ;
struct TYPE_4__ {int op; int data; } ;
struct TYPE_3__ {int /*<<< orphan*/  recv_cq; } ;

/* Variables and functions */
 int /*<<< orphan*/  EIO ; 
 scalar_t__ IBV_WC_SUCCESS ; 
 int IBV_WC_WITH_IMM ; 
 int RS_CTRL_DISCONNECT ; 
 int RS_CTRL_SHUTDOWN ; 
#define  RS_OP_CTRL 131 
#define  RS_OP_IOMAP_SGL 130 
#define  RS_OP_SGL 129 
#define  RS_OP_WRITE 128 
 size_t FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  errno ; 
 int FUNC1 (int /*<<< orphan*/ ,int,struct ibv_wc*) ; 
 int rs_connected ; 
 void* rs_disconnected ; 
 void* rs_error ; 
 int FUNC2 (size_t) ; 
 int FUNC3 (size_t) ; 
 int FUNC4 (struct rsocket*) ; 
 int rs_readable ; 
 size_t FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 int rs_writable ; 

__attribute__((used)) static int FUNC8(struct rsocket *rs)
{
	struct ibv_wc wc;
	uint32_t msg;
	int ret, rcnt = 0;

	while ((ret = FUNC1(rs->cm_id->recv_cq, 1, &wc)) > 0) {
		if (FUNC7(wc.wr_id)) {
			if (wc.status != IBV_WC_SUCCESS)
				continue;
			rcnt++;

			if (wc.wc_flags & IBV_WC_WITH_IMM) {
				msg = FUNC0(wc.imm_data);
			} else {
				msg = ((uint32_t *) (rs->rbuf + rs->rbuf_size))
					[FUNC5(wc.wr_id)];

			}
			switch (FUNC3(msg)) {
			case RS_OP_SGL:
				rs->sseq_comp = (uint16_t) FUNC2(msg);
				break;
			case RS_OP_IOMAP_SGL:
				/* The iomap was updated, that's nice to know. */
				break;
			case RS_OP_CTRL:
				if (FUNC2(msg) == RS_CTRL_DISCONNECT) {
					rs->state = rs_disconnected;
					return 0;
				} else if (FUNC2(msg) == RS_CTRL_SHUTDOWN) {
					if (rs->state & rs_writable) {
						rs->state &= ~rs_readable;
					} else {
						rs->state = rs_disconnected;
						return 0;
					}
				}
				break;
			case RS_OP_WRITE:
				/* We really shouldn't be here. */
				break;
			default:
				rs->rmsg[rs->rmsg_tail].op = FUNC3(msg);
				rs->rmsg[rs->rmsg_tail].data = FUNC2(msg);
				if (++rs->rmsg_tail == rs->rq_size + 1)
					rs->rmsg_tail = 0;
				break;
			}
		} else {
			switch  (FUNC3(FUNC5(wc.wr_id))) {
			case RS_OP_SGL:
				rs->ctrl_max_seqno++;
				break;
			case RS_OP_CTRL:
				rs->ctrl_max_seqno++;
				if (FUNC2(FUNC5(wc.wr_id)) == RS_CTRL_DISCONNECT)
					rs->state = rs_disconnected;
				break;
			case RS_OP_IOMAP_SGL:
				rs->sqe_avail++;
				if (!FUNC6(wc.wr_id))
					rs->sbuf_bytes_avail += sizeof(struct rs_iomap);
				break;
			default:
				rs->sqe_avail++;
				rs->sbuf_bytes_avail += FUNC2(FUNC5(wc.wr_id));
				break;
			}
			if (wc.status != IBV_WC_SUCCESS && (rs->state & rs_connected)) {
				rs->state = rs_error;
				rs->err = EIO;
			}
		}
	}

	if (rs->state & rs_connected) {
		while (!ret && rcnt--)
			ret = FUNC4(rs);

		if (ret) {
			rs->state = rs_error;
			rs->err = errno;
		}
	}
	return ret;
}