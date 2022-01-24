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
typedef  int /*<<< orphan*/  uint32_t ;
struct al_udma {TYPE_3__* udma_regs; } ;
struct TYPE_4__ {int /*<<< orphan*/  ctrl_cycle_cnt; } ;
struct TYPE_5__ {TYPE_1__ m2s_rate_limiter; } ;
struct TYPE_6__ {TYPE_2__ m2s; } ;

/* Variables and functions */
 int /*<<< orphan*/  UDMA_M2S_RATE_LIMITER_CTRL_CYCLE_CNT_RST ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

int FUNC2(struct al_udma *udma)
{
	uint32_t reg = FUNC0(
			&udma->udma_regs->m2s.m2s_rate_limiter.ctrl_cycle_cnt);
	reg |= UDMA_M2S_RATE_LIMITER_CTRL_CYCLE_CNT_RST;
	FUNC1(&udma->udma_regs->m2s.m2s_rate_limiter.ctrl_cycle_cnt,
						reg);
	return 0;
}