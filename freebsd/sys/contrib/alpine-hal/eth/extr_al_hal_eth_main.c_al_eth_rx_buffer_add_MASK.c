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
struct TYPE_4__ {int /*<<< orphan*/  buf1_ptr; void* len_ctrl; void* buf2_ptr_lo; } ;
union al_udma_desc {TYPE_2__ rx; } ;
typedef  int uint64_t ;
typedef  int uint32_t ;
struct al_udma_q {TYPE_1__* udma; int /*<<< orphan*/  qid; } ;
struct al_buf {int len; int addr; } ;
struct TYPE_3__ {scalar_t__ rev_id; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 int FUNC1 (int) ; 
 int AL_ETH_RX_FLAGS_TGTID_MASK ; 
 int AL_S2M_DESC_DUAL_BUF ; 
 int AL_S2M_DESC_LEN2_GRANULARITY_SHIFT ; 
 int AL_S2M_DESC_LEN2_MASK ; 
 int AL_S2M_DESC_LEN2_SHIFT ; 
 int AL_S2M_DESC_LEN_MASK ; 
 int AL_S2M_DESC_RING_ID_SHIFT ; 
 int AL_UDMA_DESC_TGTID_SHIFT ; 
 scalar_t__ AL_UDMA_REV_ID_2 ; 
 int ENOSPC ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct al_udma_q*) ; 
 union al_udma_desc* FUNC5 (struct al_udma_q*) ; 
 int FUNC6 (struct al_udma_q*) ; 
 void* FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 scalar_t__ FUNC9 (int) ; 

int FUNC10(struct al_udma_q *rx_dma_q,
			      struct al_buf *buf, uint32_t flags,
			      struct al_buf *header_buf)
{
	uint64_t tgtid = ((uint64_t)flags & AL_ETH_RX_FLAGS_TGTID_MASK) <<
		AL_UDMA_DESC_TGTID_SHIFT;
	uint32_t flags_len = flags & ~AL_ETH_RX_FLAGS_TGTID_MASK;
	union al_udma_desc *rx_desc;

	FUNC3("[%s %d]: add rx buffer.\n", rx_dma_q->udma->name, rx_dma_q->qid);

#if 1
	if (FUNC9(FUNC4(rx_dma_q) < 1)) {
		FUNC3("[%s]: rx q (%d) has no enough free descriptor",
			 rx_dma_q->udma->name, rx_dma_q->qid);
		return -ENOSPC;
	}
#endif
	rx_desc = FUNC5(rx_dma_q);

	flags_len |= FUNC6(rx_dma_q) << AL_S2M_DESC_RING_ID_SHIFT;
	flags_len |= buf->len & AL_S2M_DESC_LEN_MASK;

	if (flags & AL_S2M_DESC_DUAL_BUF) {
		FUNC2(header_buf != NULL); /*header valid in dual buf */
		FUNC2((rx_dma_q->udma->rev_id >= AL_UDMA_REV_ID_2) ||
			(FUNC0(buf->addr) == FUNC0(header_buf->addr)));

		flags_len |= ((header_buf->len >> AL_S2M_DESC_LEN2_GRANULARITY_SHIFT)
			<< AL_S2M_DESC_LEN2_SHIFT) & AL_S2M_DESC_LEN2_MASK;
		rx_desc->rx.buf2_ptr_lo = FUNC7(FUNC1(header_buf->addr));
	}
	rx_desc->rx.len_ctrl = FUNC7(flags_len);
	rx_desc->rx.buf1_ptr = FUNC8(buf->addr | tgtid);

	return 0;
}