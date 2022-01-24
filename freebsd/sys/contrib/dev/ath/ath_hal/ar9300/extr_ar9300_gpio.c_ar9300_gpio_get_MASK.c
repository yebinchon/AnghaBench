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
typedef  int u_int32_t ;
struct ath_hal {int dummy; } ;
struct TYPE_3__ {int halNumGpioPins; } ;
struct TYPE_4__ {TYPE_1__ ah_caps; } ;

/* Variables and functions */
 TYPE_2__* FUNC0 (struct ath_hal*) ; 
 int AR9382_GPIO_PIN_8_RESERVED ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  AR_GPIO_IN ; 
 int /*<<< orphan*/  AR_GPIO_IN_VAL ; 
 int /*<<< orphan*/  FUNC2 (struct ath_hal*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int FUNC4 (int,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct ath_hal*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct ath_hal*,int /*<<< orphan*/ ,int,int) ; 

u_int32_t
FUNC7(struct ath_hal *ah, u_int32_t gpio)
{
    u_int32_t gpio_in;
    FUNC3(gpio < FUNC0(ah)->ah_caps.halNumGpioPins);
    if (gpio == AR9382_GPIO_PIN_8_RESERVED)
    {
        return 0xffffffff;
    }

    gpio_in = FUNC5(ah, FUNC2(ah, AR_GPIO_IN));
    FUNC6(ah, FUNC2(ah, AR_GPIO_IN),
        (1 << gpio), FUNC1(gpio));
    return (FUNC4(gpio_in, AR_GPIO_IN_VAL) & FUNC1(gpio)) != 0;
}