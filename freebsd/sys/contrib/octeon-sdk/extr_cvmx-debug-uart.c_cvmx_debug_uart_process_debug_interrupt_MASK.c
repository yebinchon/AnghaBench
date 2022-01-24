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
typedef  int /*<<< orphan*/  uint64_t ;
struct TYPE_3__ {scalar_t__ dr; } ;
struct TYPE_4__ {void* u64; TYPE_1__ s; } ;
typedef  TYPE_2__ cvmx_uart_lsr_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  cvmx_debug_uart ; 
 void* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  stdout ; 

void FUNC4(int irq_number, uint64_t registers[32], void *user_arg)
{
    cvmx_uart_lsr_t lsrval;

    /* Check for a Control-C interrupt from the debugger. This loop will eat
        all input received on the uart */
    lsrval.u64 = FUNC2(FUNC0(cvmx_debug_uart));
    while (lsrval.s.dr)
    {
        int c = FUNC2(FUNC1(cvmx_debug_uart));
        if (c == '\003')
        {
            register uint64_t tmp;
#ifndef CVMX_BUILD_FOR_LINUX_KERNEL
            FUNC3(stderr);
            FUNC3(stdout);
#endif
            /* Pulse MCD0 signal on Ctrl-C to stop all the cores. Also
                set the MCD0 to be not masked by this core so we know
                the signal is received by someone */
            asm volatile (
                "dmfc0 %0, $22\n"
                "ori   %0, %0, 0x1110\n"
                "dmtc0 %0, $22\n"
                : "=r" (tmp));
        }
        lsrval.u64 = FUNC2(FUNC0(cvmx_debug_uart));
    }
}