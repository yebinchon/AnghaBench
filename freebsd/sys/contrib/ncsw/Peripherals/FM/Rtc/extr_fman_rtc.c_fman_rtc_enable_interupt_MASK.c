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
struct rtc_regs {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct rtc_regs*) ; 
 int /*<<< orphan*/  FUNC1 (struct rtc_regs*,int) ; 

void FUNC2(struct rtc_regs *regs, uint32_t events)
{
	FUNC1(regs, FUNC0(regs) | events);
}