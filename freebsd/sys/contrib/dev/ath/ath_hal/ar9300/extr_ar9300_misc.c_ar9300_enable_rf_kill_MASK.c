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
struct ath_hal_9300 {int ah_gpio_select; scalar_t__ ah_polarity; scalar_t__ ah_gpio_bit; } ;
struct ath_hal {int dummy; } ;

/* Variables and functions */
 struct ath_hal_9300* FUNC0 (struct ath_hal*) ; 
 int /*<<< orphan*/  AR_GPIO_INPUT_EN_VAL ; 
 int AR_GPIO_INPUT_EN_VAL_RFSILENT_BB ; 
 int /*<<< orphan*/  AR_GPIO_INPUT_MUX2 ; 
 int AR_GPIO_INPUT_MUX2_RFSILENT ; 
 int /*<<< orphan*/  FUNC1 (struct ath_hal*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AR_PHY_TEST ; 
 int /*<<< orphan*/  AR_RFSILENT ; 
 int AR_RFSILENT_FORCE ; 
 scalar_t__ FUNC2 (struct ath_hal*) ; 
 scalar_t__ FUNC3 (struct ath_hal*) ; 
 int /*<<< orphan*/  FUNC4 (struct ath_hal*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct ath_hal*,int /*<<< orphan*/ ,int) ; 
 int RFSILENT_BB ; 
 scalar_t__ FUNC6 (struct ath_hal*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct ath_hal*,int,int) ; 
 int /*<<< orphan*/  FUNC8 (struct ath_hal*,int) ; 
 scalar_t__ FUNC9 (struct ath_hal*) ; 

void
FUNC10(struct ath_hal *ah)
{
    /* TODO - can this really be above the hal on the GPIO interface for
     * TODO - the client only?
     */
    struct ath_hal_9300    *ahp = FUNC0(ah);

    if (FUNC3(ah) || FUNC2(ah)) {
    	/* Check RF kill GPIO before set/clear RFSILENT bits. */
    	if (FUNC6(ah, ahp->ah_gpio_select) == ahp->ah_polarity) {
            FUNC5(ah, FUNC1(ah, AR_RFSILENT), 
                           AR_RFSILENT_FORCE);
            FUNC5(ah, AR_PHY_TEST, RFSILENT_BB);
        }
        else {
            FUNC4(ah, FUNC1(ah, AR_RFSILENT), 
                           AR_RFSILENT_FORCE);
            FUNC4(ah, AR_PHY_TEST, RFSILENT_BB);
        }
    }
    else {
        /* Connect rfsilent_bb_l to baseband */
        FUNC5(ah, FUNC1(ah, AR_GPIO_INPUT_EN_VAL),
            AR_GPIO_INPUT_EN_VAL_RFSILENT_BB);

        /* Set input mux for rfsilent_bb_l to GPIO #0 */
        FUNC4(ah, FUNC1(ah, AR_GPIO_INPUT_MUX2),
            AR_GPIO_INPUT_MUX2_RFSILENT);
        FUNC5(ah, FUNC1(ah, AR_GPIO_INPUT_MUX2),
            (ahp->ah_gpio_select & 0x0f) << 4);

        /*
         * Configure the desired GPIO port for input and
         * enable baseband rf silence
         */
        FUNC8(ah, ahp->ah_gpio_select);
        FUNC5(ah, AR_PHY_TEST, RFSILENT_BB);
    }

    /*
     * If radio disable switch connection to GPIO bit x is enabled
     * program GPIO interrupt.
     * If rfkill bit on eeprom is 1, setupeeprommap routine has already
     * verified that it is a later version of eeprom, it has a place for
     * rfkill bit and it is set to 1, indicating that GPIO bit x hardware
     * connection is present.
     */
     /*
      * RFKill uses polling not interrupt,
      * disable interrupt to avoid Eee PC 2.6.21.4 hang up issue
      */
    if (FUNC9(ah)) {
        if (ahp->ah_gpio_bit == FUNC6(ah, ahp->ah_gpio_select)) {
            /* switch already closed, set to interrupt upon open */
            FUNC7(ah, ahp->ah_gpio_select, !ahp->ah_gpio_bit);
        } else {
            FUNC7(ah, ahp->ah_gpio_select, ahp->ah_gpio_bit);
        }
    }
}