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
typedef  int /*<<< orphan*/  cvmx_uart_intr_handler_t ;
struct TYPE_3__ {int erbfi; } ;
struct TYPE_4__ {int /*<<< orphan*/  u64; TYPE_1__ s; } ;
typedef  TYPE_2__ cvmx_uart_ier_t ;

/* Variables and functions */
 scalar_t__ CVMX_IRQ_UART0 ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC5(int uart, cvmx_uart_intr_handler_t handler)
{
#ifndef CVMX_BUILD_FOR_LINUX_KERNEL
    cvmx_uart_ier_t ier;

    FUNC1(CVMX_IRQ_UART0 + uart, handler, NULL);
    /* Enable uart interrupts for debugger Control-C processing */
    ier.u64 = FUNC3(FUNC0(uart));
    ier.s.erbfi = 1;
    FUNC4(FUNC0(uart), ier.u64);

    FUNC2(CVMX_IRQ_UART0 + uart);
#endif
}