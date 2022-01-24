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
struct rtc_regs {int /*<<< orphan*/  tmr_off_h; int /*<<< orphan*/  tmr_off_l; } ;
typedef  int int64_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void FUNC1(struct rtc_regs *regs, int64_t val)
{
	FUNC0((uint32_t)val, &regs->tmr_off_l);
	FUNC0((uint32_t)(val >> 32), &regs->tmr_off_h);
}