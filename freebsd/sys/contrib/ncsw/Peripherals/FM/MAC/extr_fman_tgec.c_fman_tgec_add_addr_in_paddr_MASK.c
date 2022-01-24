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
typedef  scalar_t__ uint32_t ;
struct tgec_regs {int /*<<< orphan*/  mac_addr_3; int /*<<< orphan*/  mac_addr_2; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__,int /*<<< orphan*/ *) ; 

void FUNC1(struct tgec_regs *regs, uint8_t *adr)
{
	uint32_t tmp0, tmp1;

	tmp0 = (uint32_t)(adr[0] |
			adr[1] << 8 |
			adr[2] << 16 |
			adr[3] << 24);
	tmp1 = (uint32_t)(adr[4] | adr[5] << 8);
	FUNC0(tmp0, &regs->mac_addr_2);
	FUNC0(tmp1, &regs->mac_addr_3);
}