
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
struct ath_hal_9300 {int ah_intr_gen_timer_thresh; int ah_intr_gen_timer_trigger; } ;
struct ath_hal {int dummy; } ;


 struct ath_hal_9300* AH9300 (struct ath_hal*) ;

void
ar9300_get_gen_timer_interrupts(
    struct ath_hal *ah,
    u_int32_t *trigger,
    u_int32_t *thresh)
{
    struct ath_hal_9300 *ahp = AH9300(ah);
    *trigger = ahp->ah_intr_gen_timer_trigger;
    *thresh = ahp->ah_intr_gen_timer_thresh;
}
