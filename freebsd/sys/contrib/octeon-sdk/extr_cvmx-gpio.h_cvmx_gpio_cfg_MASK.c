#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int tx_oe; } ;
struct TYPE_7__ {void* u64; TYPE_2__ s; } ;
typedef  TYPE_3__ cvmx_gpio_xbit_cfgx_t ;
struct TYPE_5__ {int tx_oe; } ;
struct TYPE_8__ {void* u64; TYPE_1__ s; } ;
typedef  TYPE_4__ cvmx_gpio_bit_cfgx_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  OCTEON_CN61XX ; 
 int /*<<< orphan*/  OCTEON_CN66XX ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int) ; 
 void* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,void*) ; 

__attribute__((used)) static inline void FUNC6(int bit, int mode)
{
    if (bit > 15 && bit < 20)
    {
        /* CN61XX/CN66XX has 20 GPIO pins and only 16 are interruptable. */
        if (FUNC2(OCTEON_CN61XX) || FUNC2(OCTEON_CN66XX))
        {
            cvmx_gpio_xbit_cfgx_t gpio_xbit;
            gpio_xbit.u64 = FUNC4(FUNC1(bit));
            if (mode)
                gpio_xbit.s.tx_oe = 1;
            else
                gpio_xbit.s.tx_oe = 0;
            FUNC5(FUNC1(bit), gpio_xbit.u64);
        }
        else
            FUNC3("cvmx_gpio_cfg: Invalid GPIO bit(%d)\n", bit);
    }
    else
    {
        cvmx_gpio_bit_cfgx_t gpio_bit;
        gpio_bit.u64 = FUNC4(FUNC0(bit));
        if (mode)
            gpio_bit.s.tx_oe = 1;
        else
            gpio_bit.s.tx_oe = 0;
        FUNC5(FUNC0(bit), gpio_bit.u64);
    }
}