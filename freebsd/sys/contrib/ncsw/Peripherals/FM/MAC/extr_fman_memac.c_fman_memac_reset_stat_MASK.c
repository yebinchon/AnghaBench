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
struct memac_regs {int /*<<< orphan*/  statn_config; } ;

/* Variables and functions */
 int STATS_CFG_CLR ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ *) ; 

void FUNC2(struct memac_regs *regs)
{
    uint32_t tmp;

    tmp = FUNC0(&regs->statn_config);

    tmp |= STATS_CFG_CLR;

    FUNC1(tmp, &regs->statn_config);

    while (FUNC0(&regs->statn_config) & STATS_CFG_CLR);
}