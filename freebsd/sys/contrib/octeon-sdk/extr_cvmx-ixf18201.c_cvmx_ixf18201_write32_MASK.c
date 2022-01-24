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
typedef  int uint16_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int) ; 

void FUNC1(uint16_t reg_addr, uint32_t data)
{
    uint16_t hi, lo;

    if (reg_addr & 0x1)
    {
        return;
    }
    lo = data & 0xFFFF;
    hi = data >> 16;
    FUNC0(reg_addr, lo);
    FUNC0(reg_addr + 1, hi);

}