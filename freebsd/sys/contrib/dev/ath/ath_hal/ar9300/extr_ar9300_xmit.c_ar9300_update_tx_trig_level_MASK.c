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
typedef  scalar_t__ u_int32_t ;
struct ath_hal_9300 {scalar_t__ ah_tx_trig_level; int ah_mask_reg; } ;
struct ath_hal {int dummy; } ;
typedef  int HAL_INT ;
typedef  int HAL_BOOL ;

/* Variables and functions */
 struct ath_hal_9300* FUNC0 (struct ath_hal*) ; 
 int AH_FALSE ; 
 scalar_t__ AR_FTRIG ; 
 int /*<<< orphan*/  AR_TXCFG ; 
 int HAL_INT_GLOBAL ; 
 scalar_t__ MAX_TX_FIFO_THRESHOLD ; 
 scalar_t__ MIN_TX_FIFO_THRESHOLD ; 
 scalar_t__ FUNC1 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC2 (struct ath_hal*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ath_hal*,int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC4 (scalar_t__,scalar_t__) ; 
 int FUNC5 (struct ath_hal*,int,int /*<<< orphan*/ ) ; 

HAL_BOOL
FUNC6(struct ath_hal *ah, HAL_BOOL b_inc_trig_level)
{
    struct ath_hal_9300 *ahp = FUNC0(ah);
    u_int32_t txcfg, cur_level, new_level;
    HAL_INT omask;

    if (FUNC0(ah)->ah_tx_trig_level >= MAX_TX_FIFO_THRESHOLD &&
        b_inc_trig_level)
    {
        return AH_FALSE;
    }

    /*
     * Disable interrupts while futzing with the fifo level.
     */
    omask = FUNC5(ah, ahp->ah_mask_reg &~ HAL_INT_GLOBAL, 0);

    txcfg = FUNC2(ah, AR_TXCFG);
    cur_level = FUNC1(txcfg, AR_FTRIG);
    new_level = cur_level;

    if (b_inc_trig_level)  {   /* increase the trigger level */
        if (cur_level < MAX_TX_FIFO_THRESHOLD) {
            new_level++;
        }
    } else if (cur_level > MIN_TX_FIFO_THRESHOLD) {
        new_level--;
    }

    if (new_level != cur_level) {
        /* Update the trigger level */
        FUNC3(ah,
            AR_TXCFG, (txcfg &~ AR_FTRIG) | FUNC4(new_level, AR_FTRIG));
    }

    /* re-enable chip interrupts */
    FUNC5(ah, omask, 0);

    FUNC0(ah)->ah_tx_trig_level = new_level;

    return (new_level != cur_level);
}