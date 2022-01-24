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
struct tgec_regs {int /*<<< orphan*/  mac_addr_3; int /*<<< orphan*/  mac_addr_2; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void FUNC1(struct tgec_regs *regs)
{
	FUNC0(0, &regs->mac_addr_2);
	FUNC0(0, &regs->mac_addr_3);
}