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
struct TYPE_3__ {int /*<<< orphan*/  ctrl_meta; } ;
typedef  union al_udma_cdesc {TYPE_1__ al_desc_comp_tx; } volatile al_udma_cdesc ;
typedef  scalar_t__ uint32_t ;
struct al_udma_q {int flags; scalar_t__ pkt_crnt_descs; scalar_t__ size; int /*<<< orphan*/  next_cdesc_idx; int /*<<< orphan*/  qid; TYPE_2__* udma; union al_udma_cdesc volatile* comp_head_ptr; } ;
struct TYPE_4__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 scalar_t__ AL_FALSE ; 
 int AL_UDMA_Q_FLAGS_NO_COMP_UPDATE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 void* FUNC1 (struct al_udma_q*,union al_udma_cdesc volatile*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,union al_udma_cdesc volatile*,int /*<<< orphan*/ ,scalar_t__) ; 
 union al_udma_cdesc volatile* FUNC3 (struct al_udma_q*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct al_udma_q*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int) ; 

uint32_t FUNC8(
	struct al_udma_q		*udma_q,
	volatile union al_udma_cdesc	**cdesc)
{
	uint32_t count;
	volatile union al_udma_cdesc *curr;
	uint32_t comp_flags;

	/* this function requires the completion ring update */
	FUNC0(!(udma_q->flags & AL_UDMA_Q_FLAGS_NO_COMP_UPDATE));

	/* comp_head points to the last comp desc that was processed */
	curr = udma_q->comp_head_ptr;
	comp_flags = FUNC6(curr->al_desc_comp_tx.ctrl_meta);

	/* check if the completion descriptor is new */
	if (FUNC7(FUNC4(udma_q, comp_flags) == AL_FALSE))
		return 0;
	/* if new desc found, increment the current packets descriptors */
	count = udma_q->pkt_crnt_descs + 1;
	while (!FUNC5(comp_flags)) {
		curr = FUNC1(udma_q, curr);
		comp_flags = FUNC6(curr->al_desc_comp_tx.ctrl_meta);
		if (FUNC7(FUNC4(udma_q, comp_flags)
								== AL_FALSE)) {
			/* the current packet here doesn't have all  */
			/* descriptors completed. log the current desc */
			/* location and number of completed descriptors so */
			/*  far. then return */
			udma_q->pkt_crnt_descs = count;
			udma_q->comp_head_ptr = curr;
			return 0;
		}
		count++;
		/* check against max descs per packet. */
		FUNC0(count <= udma_q->size);
	}
	/* return back the first descriptor of the packet */
	*cdesc = FUNC3(udma_q, udma_q->next_cdesc_idx);
	udma_q->pkt_crnt_descs = 0;
	udma_q->comp_head_ptr = FUNC1(udma_q, curr);

	FUNC2("udma [%s %d]: packet completed. first desc %p (ixd 0x%x)"
		 " descs %d\n", udma_q->udma->name, udma_q->qid, *cdesc,
		 udma_q->next_cdesc_idx, count);

	return count;
}