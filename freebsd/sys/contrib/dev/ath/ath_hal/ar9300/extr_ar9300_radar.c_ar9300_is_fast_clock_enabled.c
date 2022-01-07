
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath_hal_private {int ah_curchan; } ;
struct ath_hal {int dummy; } ;
typedef int HAL_BOOL ;


 int AH_FALSE ;
 struct ath_hal_private* AH_PRIVATE (struct ath_hal*) ;
 int AH_TRUE ;
 scalar_t__ IS_5GHZ_FAST_CLOCK_EN (struct ath_hal*,int ) ;

HAL_BOOL
ar9300_is_fast_clock_enabled(struct ath_hal *ah)
{
    struct ath_hal_private *ahp = AH_PRIVATE(ah);

    if (IS_5GHZ_FAST_CLOCK_EN(ah, ahp->ah_curchan)) {
        return AH_TRUE;
    }
    return AH_FALSE;
}
