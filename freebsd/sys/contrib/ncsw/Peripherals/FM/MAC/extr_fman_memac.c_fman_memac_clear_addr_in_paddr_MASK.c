#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int uint8_t ;
struct TYPE_3__ {int /*<<< orphan*/  mac_addr_u; int /*<<< orphan*/  mac_addr_l; } ;
struct memac_regs {TYPE_2__* mac_addr; TYPE_1__ mac_addr0; } ;
struct TYPE_4__ {int /*<<< orphan*/  mac_addr_u; int /*<<< orphan*/  mac_addr_l; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ *) ; 

void FUNC1(struct memac_regs *regs,
                    uint8_t paddr_num)
{
    if (paddr_num == 0) {
        FUNC0(0, &regs->mac_addr0.mac_addr_l);
        FUNC0(0, &regs->mac_addr0.mac_addr_u);
    } else {
        FUNC0(0x0, &regs->mac_addr[paddr_num - 1].mac_addr_l);
        FUNC0(0x0, &regs->mac_addr[paddr_num - 1].mac_addr_u);
    }
}