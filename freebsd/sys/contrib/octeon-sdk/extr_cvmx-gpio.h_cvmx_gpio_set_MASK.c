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
typedef  int /*<<< orphan*/  uint32_t ;
struct TYPE_3__ {int /*<<< orphan*/  set; } ;
struct TYPE_4__ {scalar_t__ u64; TYPE_1__ s; } ;
typedef  TYPE_2__ cvmx_gpio_tx_set_t ;

/* Variables and functions */
 int /*<<< orphan*/  CVMX_GPIO_TX_SET ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static inline void FUNC1(uint32_t set_mask)
{
    cvmx_gpio_tx_set_t gpio_tx_set;
    gpio_tx_set.u64 = 0;
    gpio_tx_set.s.set = set_mask;
    FUNC0(CVMX_GPIO_TX_SET, gpio_tx_set.u64);
}