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
typedef  int uint32_t ;
struct fman_dma_regs {int /*<<< orphan*/  fmdmmr; } ;

/* Variables and functions */
 int DMA_MODE_BUS_PRI_SHIFT ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ *) ; 

void FUNC2(struct fman_dma_regs *dma_rg, uint32_t pri)
{
	uint32_t tmp;

	tmp = FUNC0(&dma_rg->fmdmmr) |
			(pri << DMA_MODE_BUS_PRI_SHIFT);

	FUNC1(tmp, &dma_rg->fmdmmr);
}