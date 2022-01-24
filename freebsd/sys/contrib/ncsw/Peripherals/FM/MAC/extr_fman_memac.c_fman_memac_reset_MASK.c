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
struct memac_regs {int /*<<< orphan*/  command_config; } ;

/* Variables and functions */
 int CMD_CFG_SW_RESET ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ *) ; 

void FUNC2(struct memac_regs *regs)
{
    uint32_t tmp;

    tmp = FUNC0(&regs->command_config);

    tmp |= CMD_CFG_SW_RESET;

    FUNC1(tmp, &regs->command_config);

    while (FUNC0(&regs->command_config) & CMD_CFG_SW_RESET);
}