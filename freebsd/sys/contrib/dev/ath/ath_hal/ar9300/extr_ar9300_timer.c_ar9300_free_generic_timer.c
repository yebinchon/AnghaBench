
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath_hal_9300 {int ah_avail_gen_timers; } ;
struct ath_hal {int dummy; } ;


 struct ath_hal_9300* AH9300 (struct ath_hal*) ;
 int AR_GENTMR_BIT (int) ;
 int ar9300_stop_generic_timer (struct ath_hal*,int) ;

void
ar9300_free_generic_timer(struct ath_hal *ah, int index)
{
    struct ath_hal_9300 *ahp = AH9300(ah);

    ar9300_stop_generic_timer(ah, index);
    ahp->ah_avail_gen_timers |= AR_GENTMR_BIT(index);
}
