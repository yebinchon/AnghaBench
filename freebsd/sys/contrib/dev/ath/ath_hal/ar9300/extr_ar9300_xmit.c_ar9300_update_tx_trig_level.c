
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_int32_t ;
struct ath_hal_9300 {scalar_t__ ah_tx_trig_level; int ah_mask_reg; } ;
struct ath_hal {int dummy; } ;
typedef int HAL_INT ;
typedef int HAL_BOOL ;


 struct ath_hal_9300* AH9300 (struct ath_hal*) ;
 int AH_FALSE ;
 scalar_t__ AR_FTRIG ;
 int AR_TXCFG ;
 int HAL_INT_GLOBAL ;
 scalar_t__ MAX_TX_FIFO_THRESHOLD ;
 scalar_t__ MIN_TX_FIFO_THRESHOLD ;
 scalar_t__ MS (scalar_t__,scalar_t__) ;
 scalar_t__ OS_REG_READ (struct ath_hal*,int ) ;
 int OS_REG_WRITE (struct ath_hal*,int ,scalar_t__) ;
 scalar_t__ SM (scalar_t__,scalar_t__) ;
 int ar9300_set_interrupts (struct ath_hal*,int,int ) ;

HAL_BOOL
ar9300_update_tx_trig_level(struct ath_hal *ah, HAL_BOOL b_inc_trig_level)
{
    struct ath_hal_9300 *ahp = AH9300(ah);
    u_int32_t txcfg, cur_level, new_level;
    HAL_INT omask;

    if (AH9300(ah)->ah_tx_trig_level >= MAX_TX_FIFO_THRESHOLD &&
        b_inc_trig_level)
    {
        return AH_FALSE;
    }




    omask = ar9300_set_interrupts(ah, ahp->ah_mask_reg &~ HAL_INT_GLOBAL, 0);

    txcfg = OS_REG_READ(ah, AR_TXCFG);
    cur_level = MS(txcfg, AR_FTRIG);
    new_level = cur_level;

    if (b_inc_trig_level) {
        if (cur_level < MAX_TX_FIFO_THRESHOLD) {
            new_level++;
        }
    } else if (cur_level > MIN_TX_FIFO_THRESHOLD) {
        new_level--;
    }

    if (new_level != cur_level) {

        OS_REG_WRITE(ah,
            AR_TXCFG, (txcfg &~ AR_FTRIG) | SM(new_level, AR_FTRIG));
    }


    ar9300_set_interrupts(ah, omask, 0);

    AH9300(ah)->ah_tx_trig_level = new_level;

    return (new_level != cur_level);
}
