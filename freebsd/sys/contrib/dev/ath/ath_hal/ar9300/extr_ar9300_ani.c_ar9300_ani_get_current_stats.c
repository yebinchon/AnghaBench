
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ath_hal {int dummy; } ;
struct TYPE_2__ {int ah_stats; } ;
typedef int HAL_ANI_STATS ;


 TYPE_1__* AH9300 (struct ath_hal*) ;

HAL_ANI_STATS *
ar9300_ani_get_current_stats(struct ath_hal *ah)
{
    return &AH9300(ah)->ah_stats;
}
