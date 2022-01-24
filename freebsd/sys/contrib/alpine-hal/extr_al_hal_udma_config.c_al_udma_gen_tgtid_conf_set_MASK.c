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
struct unit_regs {int dummy; } ;
struct al_udma_gen_tgtid_conf {int dummy; } ;

/* Variables and functions */
 int DMA_MAX_Q ; 
 int /*<<< orphan*/  FUNC0 (struct unit_regs*,struct al_udma_gen_tgtid_conf*,int) ; 

void FUNC1(
	struct unit_regs		*unit_regs,
	struct al_udma_gen_tgtid_conf	*conf)
{
	int i;

	for (i = 0; i < DMA_MAX_Q; i++)
		FUNC0(unit_regs, conf, i);
}