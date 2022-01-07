
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
struct ath_hal_9300 {int ah_avail_gen_timers; scalar_t__ ah_enable_tsf2; } ;
struct ath_hal {int dummy; } ;
typedef scalar_t__ HAL_GEN_TIMER_DOMAIN ;


 struct ath_hal_9300* AH9300 (struct ath_hal*) ;
 scalar_t__ AH_TRUE ;
 int AR_FIRST_NDP_TIMER ;
 int AR_GENTMR_BIT (int) ;
 int AR_GEN_TIMER_BANK_1_LEN ;
 int AR_NUM_GEN_TIMERS ;
 scalar_t__ HAL_GEN_TIMER_TSF ;
 scalar_t__ HAL_GEN_TIMER_TSF2 ;
 int ar9300_start_tsf2 (struct ath_hal*) ;

int
ar9300_alloc_generic_timer(struct ath_hal *ah, HAL_GEN_TIMER_DOMAIN tsf)
{
    struct ath_hal_9300 *ahp = AH9300(ah);
    u_int32_t i, mask;
    u_int32_t avail_timer_start, avail_timer_end;

    if (tsf == HAL_GEN_TIMER_TSF) {
        avail_timer_start = AR_FIRST_NDP_TIMER;
        avail_timer_end = AR_GEN_TIMER_BANK_1_LEN;
    } else {
        avail_timer_start = AR_GEN_TIMER_BANK_1_LEN;
        avail_timer_end = AR_NUM_GEN_TIMERS;
    }


    i = avail_timer_start;
    mask = ahp->ah_avail_gen_timers >> i;
    for ( ; mask && (i < avail_timer_end) ; mask >>= 1, i++ ) {
        if (mask & 0x1) {
            ahp->ah_avail_gen_timers &= ~(AR_GENTMR_BIT(i));

            if ((tsf == HAL_GEN_TIMER_TSF2) && !ahp->ah_enable_tsf2) {
                ahp->ah_enable_tsf2 = AH_TRUE;
                ar9300_start_tsf2(ah);
            }
            return i;
        }
    }
    return -1;
}
