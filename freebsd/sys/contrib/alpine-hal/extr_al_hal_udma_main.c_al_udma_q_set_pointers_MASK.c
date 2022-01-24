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
struct al_udma_q {int size; int /*<<< orphan*/  cdesc_phy_base; TYPE_2__* q_regs; int /*<<< orphan*/  flags; int /*<<< orphan*/ * cdesc_base_ptr; int /*<<< orphan*/  desc_phy_base; } ;
struct TYPE_3__ {int /*<<< orphan*/  crbp_high; int /*<<< orphan*/  crbp_low; int /*<<< orphan*/  drl; int /*<<< orphan*/  drbp_high; int /*<<< orphan*/  drbp_low; } ;
struct TYPE_4__ {TYPE_1__ rings; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AL_UDMA_Q_FLAGS_NO_COMP_UPDATE ; 
 int UDMA_M2S_Q_TCRBP_LOW_ADDR_MASK ; 
 int UDMA_M2S_Q_TDRBP_LOW_ADDR_MASK ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (struct al_udma_q*) ; 

__attribute__((used)) static int FUNC5(struct al_udma_q *udma_q)
{
	/* reset the descriptors ring pointers */
	/* assert descriptor base address aligned. */
	FUNC2((FUNC1(udma_q->desc_phy_base) &
		   ~UDMA_M2S_Q_TDRBP_LOW_ADDR_MASK) == 0);
	FUNC3(&udma_q->q_regs->rings.drbp_low,
		       FUNC1(udma_q->desc_phy_base));
	FUNC3(&udma_q->q_regs->rings.drbp_high,
		       FUNC0(udma_q->desc_phy_base));

	FUNC3(&udma_q->q_regs->rings.drl, udma_q->size);

	/* if completion ring update disabled */
	if (udma_q->cdesc_base_ptr == NULL) {
		udma_q->flags |= AL_UDMA_Q_FLAGS_NO_COMP_UPDATE;
	} else {
		/* reset the completion descriptors ring pointers */
		/* assert completion base address aligned. */
		FUNC2((FUNC1(udma_q->cdesc_phy_base) &
			   ~UDMA_M2S_Q_TCRBP_LOW_ADDR_MASK) == 0);
		FUNC3(&udma_q->q_regs->rings.crbp_low,
			       FUNC1(udma_q->cdesc_phy_base));
		FUNC3(&udma_q->q_regs->rings.crbp_high,
			       FUNC0(udma_q->cdesc_phy_base));
	}
	FUNC4(udma_q);
	return 0;
}