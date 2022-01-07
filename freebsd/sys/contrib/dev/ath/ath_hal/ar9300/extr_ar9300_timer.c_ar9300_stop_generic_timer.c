
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ath_hal {int dummy; } ;
struct TYPE_2__ {int mode_mask; int mode_addr; } ;


 int AR_FIRST_NDP_TIMER ;
 int AR_GENTMR_BIT (int) ;
 int AR_IMR_S5 ;
 int AR_IMR_S5_GENTIMER_THRESH ;
 int AR_IMR_S5_GENTIMER_TRIG ;
 int AR_NUM_GEN_TIMERS ;
 int OS_REG_CLR_BIT (struct ath_hal*,int ,int) ;
 int SM (int ,int ) ;
 TYPE_1__* gen_timer_configuration ;

void
ar9300_stop_generic_timer(struct ath_hal *ah, int index)
{
    if ((index < AR_FIRST_NDP_TIMER) || (index >= AR_NUM_GEN_TIMERS)) {
        return;
    }




    OS_REG_CLR_BIT(ah,
        gen_timer_configuration[index].mode_addr,
        gen_timer_configuration[index].mode_mask);


    OS_REG_CLR_BIT(ah, AR_IMR_S5,
                   (SM(AR_GENTMR_BIT(index), AR_IMR_S5_GENTIMER_THRESH) |
                    SM(AR_GENTMR_BIT(index), AR_IMR_S5_GENTIMER_TRIG)));
}
