
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ath_hal {int dummy; } ;
struct TYPE_2__ {scalar_t__ tx_frame_count; scalar_t__ rx_frame_count; void* is_rx_active; void* is_tx_active; scalar_t__ cycle_count; scalar_t__ rx_clear_count; } ;
typedef int HAL_SURVEY_SAMPLE ;
typedef void* HAL_BOOL ;


 void* AH_FALSE ;
 void* AH_TRUE ;
 int AR_CCCNT ;
 int AR_RCCNT ;
 int AR_RFCNT ;
 int AR_TFCNT ;
 scalar_t__ OS_REG_READ (struct ath_hal*,int ) ;
 TYPE_1__* p_cnts ;

HAL_BOOL
ar9300_get_mib_cycle_counts(struct ath_hal *ah, HAL_SURVEY_SAMPLE *hs)
{
    return AH_FALSE;
}
