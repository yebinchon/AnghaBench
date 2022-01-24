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
struct TYPE_3__ {unsigned int uart; } ;
struct TYPE_4__ {void* u64; TYPE_1__ s; } ;
typedef  TYPE_2__ cvmx_ciu_intx0_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 unsigned int cvmx_debug_uart ; 
 void* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,void*) ; 

__attribute__((used)) static void FUNC3(int oldcore, int newcore)
{
#ifndef CVMX_BUILD_FOR_LINUX_KERNEL
    cvmx_ciu_intx0_t irq_control;

    irq_control.u64 = FUNC1(FUNC0(newcore * 2));
    irq_control.s.uart |= (1u<<cvmx_debug_uart);
    FUNC2(FUNC0(newcore * 2), irq_control.u64);

    /* Disable interrupts to this core since he is about to die */
    irq_control.u64 = FUNC1(FUNC0(oldcore * 2));
    irq_control.s.uart &= ~(1u<<cvmx_debug_uart);
    FUNC2(FUNC0(oldcore* 2), irq_control.u64);
#endif
}