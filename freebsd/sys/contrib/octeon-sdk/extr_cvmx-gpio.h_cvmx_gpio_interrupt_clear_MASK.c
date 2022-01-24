#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_8__ ;
typedef  struct TYPE_15__   TYPE_7__ ;
typedef  struct TYPE_14__   TYPE_6__ ;
typedef  struct TYPE_13__   TYPE_5__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int uint16_t ;
struct TYPE_9__ {scalar_t__ en; } ;
struct TYPE_13__ {TYPE_1__ s; void* u64; } ;
typedef  TYPE_5__ cvmx_gpio_multi_cast_t ;
struct TYPE_12__ {int type; } ;
struct TYPE_14__ {int u64; TYPE_4__ s; } ;
typedef  TYPE_6__ cvmx_gpio_int_clr_t ;
struct TYPE_10__ {scalar_t__ int_type; scalar_t__ int_en; } ;
struct TYPE_15__ {TYPE_2__ s; void* u64; } ;
typedef  TYPE_7__ cvmx_gpio_bit_cfgx_t ;
struct TYPE_11__ {int gpio; } ;
struct TYPE_16__ {int u64; TYPE_3__ s; } ;
typedef  TYPE_8__ cvmx_ciu_intx_sum0_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  CVMX_GPIO_INT_CLR ; 
 int /*<<< orphan*/  CVMX_GPIO_MULTI_CAST ; 
 int /*<<< orphan*/  OCTEON_CN61XX ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 () ; 
 void* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static inline void FUNC6(uint16_t clear_mask)
{
    if (FUNC2(OCTEON_CN61XX))
    {
        cvmx_gpio_multi_cast_t multi_cast;
        cvmx_gpio_bit_cfgx_t gpio_bit;
        int core = FUNC3();
        
        multi_cast.u64 = FUNC4(CVMX_GPIO_MULTI_CAST);
        gpio_bit.u64 = FUNC4(FUNC1(core));

        /* If Multicast mode is enabled, and GPIO interrupt is enabled for
           edge detection, then GPIO<4..7> interrupts are per core */
        if (multi_cast.s.en && gpio_bit.s.int_en && gpio_bit.s.int_type)
        {
            /* Clear GPIO<4..7> per core */
            cvmx_ciu_intx_sum0_t ciu_sum0;
            ciu_sum0.u64 = FUNC4(FUNC0(core * 2));
            ciu_sum0.s.gpio = clear_mask & 0xf0;
            FUNC5(FUNC0(core * 2), ciu_sum0.u64);

            /* Clear other GPIO pins for all cores. */
            FUNC5(CVMX_GPIO_INT_CLR, (clear_mask & ~0xf0));
            return;
        }
    }
    /* Clear GPIO pins state across all cores and common interrupt states. */ 
    cvmx_gpio_int_clr_t gpio_int_clr;
    gpio_int_clr.u64 = 0;
    gpio_int_clr.s.type = clear_mask;
    FUNC5(CVMX_GPIO_INT_CLR, gpio_int_clr.u64);
}