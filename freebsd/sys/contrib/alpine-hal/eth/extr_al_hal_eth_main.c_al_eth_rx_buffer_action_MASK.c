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
typedef  int /*<<< orphan*/  uint32_t ;
struct al_udma_q {int /*<<< orphan*/  qid; TYPE_1__* udma; } ;
struct TYPE_2__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct al_udma_q*,int /*<<< orphan*/ ) ; 

void FUNC2(struct al_udma_q *rx_dma_q, uint32_t descs_num)
{
	FUNC0("[%s]: update the rx engine tail pointer: queue %d. descs %d\n",
		 rx_dma_q->udma->name, rx_dma_q->qid, descs_num);

	/* add rx descriptor */
	FUNC1(rx_dma_q, descs_num);
}