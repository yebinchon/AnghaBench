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
typedef  int /*<<< orphan*/  uint32_t ;
struct al_udma_q {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct al_udma_q*,int /*<<< orphan*/ ) ; 

void FUNC1(struct al_udma_q *tx_dma_q, uint32_t tx_descs)
{
	/* add tx descriptors */
	FUNC0(tx_dma_q, tx_descs);
}