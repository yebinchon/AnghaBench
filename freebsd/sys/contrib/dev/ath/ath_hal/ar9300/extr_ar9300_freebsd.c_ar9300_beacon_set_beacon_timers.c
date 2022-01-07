
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
struct ath_hal {int dummy; } ;
struct TYPE_5__ {int ah_beaconInterval; } ;
struct TYPE_4__ {int bt_nexttbtt; int bt_nextatim; int bt_intval; scalar_t__ bt_flags; int bt_nextswba; int bt_nextdba; } ;
typedef TYPE_1__ HAL_BEACON_TIMERS ;


 TYPE_3__* AH9300 (struct ath_hal*) ;
 int AR_BEACON_PERIOD ;
 int AR_DBA_TIMER_EN ;
 int AR_DMA_BEACON_PERIOD ;
 int AR_NDP_PERIOD ;
 int AR_NEXT_DMA_BEACON_ALERT ;
 int AR_NEXT_NDP_TIMER ;
 int AR_NEXT_SWBA ;
 int AR_NEXT_TBTT_TIMER ;
 int AR_SWBA_PERIOD ;
 int AR_SWBA_TIMER_EN ;
 int AR_TBTT_TIMER_EN ;
 int AR_TIMER_MODE ;
 int AR_TXCFG ;
 int AR_TXCFG_ADHOC_BEACON_ATIM_TX_POLICY ;
 int HALASSERT (int) ;
 int HAL_BEACON_PERIOD ;
 int HAL_BEACON_RESET_TSF ;
 scalar_t__ HAL_M_HOSTAP ;
 scalar_t__ HAL_M_IBSS ;
 int ONE_EIGHTH_TU_TO_USEC (int ) ;
 int OS_REG_SET_BIT (struct ath_hal*,int ,int) ;
 int OS_REG_WRITE (struct ath_hal*,int ,int ) ;
 int TU_TO_USEC (int) ;
 int ar9300_reset_tsf (struct ath_hal*) ;
 scalar_t__ opmode ;

__attribute__((used)) static void
ar9300_beacon_set_beacon_timers(struct ath_hal *ah,
    const HAL_BEACON_TIMERS *bt)
{
 uint32_t bperiod;
 OS_REG_WRITE(ah, AR_NEXT_TBTT_TIMER, TU_TO_USEC(bt->bt_nexttbtt));
 OS_REG_WRITE(ah, AR_NEXT_DMA_BEACON_ALERT, ONE_EIGHTH_TU_TO_USEC(bt->bt_nextdba));
 OS_REG_WRITE(ah, AR_NEXT_SWBA, ONE_EIGHTH_TU_TO_USEC(bt->bt_nextswba));
 OS_REG_WRITE(ah, AR_NEXT_NDP_TIMER, TU_TO_USEC(bt->bt_nextatim));

 bperiod = TU_TO_USEC(bt->bt_intval & HAL_BEACON_PERIOD);
 AH9300(ah)->ah_beaconInterval = bt->bt_intval & HAL_BEACON_PERIOD;
 OS_REG_WRITE(ah, AR_BEACON_PERIOD, bperiod);
 OS_REG_WRITE(ah, AR_DMA_BEACON_PERIOD, bperiod);
 OS_REG_WRITE(ah, AR_SWBA_PERIOD, bperiod);
 OS_REG_WRITE(ah, AR_NDP_PERIOD, bperiod);




 if (bt->bt_intval & HAL_BEACON_RESET_TSF)
  ar9300_reset_tsf(ah);



 OS_REG_SET_BIT(ah, AR_TIMER_MODE,
     bt->bt_flags != 0 ? bt->bt_flags :
     AR_TBTT_TIMER_EN | AR_DBA_TIMER_EN | AR_SWBA_TIMER_EN);
}
