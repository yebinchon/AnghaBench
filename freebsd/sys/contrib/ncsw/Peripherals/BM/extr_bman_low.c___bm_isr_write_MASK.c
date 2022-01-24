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
struct bm_portal {int /*<<< orphan*/  addr; } ;
typedef  enum bm_isr_reg { ____Placeholder_bm_isr_reg } bm_isr_reg ;

/* Variables and functions */
 scalar_t__ REG_ISR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ) ; 

void FUNC1(struct bm_portal *portal, enum bm_isr_reg n, uint32_t val)
{
    FUNC0(&portal->addr, REG_ISR + (n << 2), val);
}