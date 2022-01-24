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
typedef  int uint8_t ;
typedef  int uint32_t ;
typedef  scalar_t__ uint16_t ;
struct memac_regs {int /*<<< orphan*/ * pause_thresh; int /*<<< orphan*/ * pause_quanta; int /*<<< orphan*/  command_config; int /*<<< orphan*/  tx_fifo_sections; } ;

/* Variables and functions */
 int CMD_CFG_PFC_MODE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ *) ; 

void FUNC4(struct memac_regs *regs,
                uint8_t priority,
                uint16_t pause_time,
                uint16_t thresh_time)
{
    uint32_t tmp;

	tmp = FUNC2(&regs->tx_fifo_sections);

	if (priority == 0xff) {
		FUNC0(tmp);
		FUNC3(tmp, &regs->tx_fifo_sections);

		tmp = FUNC2(&regs->command_config);
		tmp &= ~CMD_CFG_PFC_MODE;
		priority = 0;
	} else {
		FUNC1(tmp);
		FUNC3(tmp, &regs->tx_fifo_sections);

		tmp = FUNC2(&regs->command_config);
		tmp |= CMD_CFG_PFC_MODE;
    }

    FUNC3(tmp, &regs->command_config);

    tmp = FUNC2(&regs->pause_quanta[priority / 2]);
    if (priority % 2)
        tmp &= 0x0000FFFF;
    else
        tmp &= 0xFFFF0000;
    tmp |= ((uint32_t)pause_time << (16 * (priority % 2)));
    FUNC3(tmp, &regs->pause_quanta[priority / 2]);

    tmp = FUNC2(&regs->pause_thresh[priority / 2]);
    if (priority % 2)
            tmp &= 0x0000FFFF;
    else
            tmp &= 0xFFFF0000;
    tmp |= ((uint32_t)thresh_time<<(16 * (priority % 2)));
    FUNC3(tmp, &regs->pause_thresh[priority / 2]);
}