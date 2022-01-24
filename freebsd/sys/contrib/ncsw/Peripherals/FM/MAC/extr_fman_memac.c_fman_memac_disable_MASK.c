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
struct memac_regs {int /*<<< orphan*/  command_config; } ;

/* Variables and functions */
 int /*<<< orphan*/  CMD_CFG_RX_EN ; 
 int /*<<< orphan*/  CMD_CFG_TX_EN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void FUNC2(struct memac_regs *regs, bool apply_rx, bool apply_tx)
{
    uint32_t tmp;

    tmp = FUNC0(&regs->command_config);

    if (apply_rx)
        tmp &= ~CMD_CFG_RX_EN;

    if (apply_tx)
        tmp &= ~CMD_CFG_TX_EN;

    FUNC1(tmp, &regs->command_config);
}