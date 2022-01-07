
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct ath_hal {int dummy; } ;
struct TYPE_5__ {int ath_hal_cal_reuse; } ;
struct TYPE_7__ {TYPE_1__ ah_config; } ;
struct TYPE_6__ {void* one_time_txclcal_done; void* one_time_txiqcal_done; } ;
typedef TYPE_2__ HAL_CHANNEL_INTERNAL ;


 void* AH_FALSE ;
 TYPE_4__* AH_PRIVATE (struct ath_hal*) ;
 int ATH_CAL_REUSE_REDO_IN_FULL_RESET ;

__attribute__((used)) static inline void
ar9300_invalidate_saved_cals(struct ath_hal *ah, HAL_CHANNEL_INTERNAL *ichan)
{
}
