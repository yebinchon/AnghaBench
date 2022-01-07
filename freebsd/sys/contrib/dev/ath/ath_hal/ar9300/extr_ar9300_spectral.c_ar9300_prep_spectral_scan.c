
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ath_hal {int dummy; } ;
struct TYPE_2__ {scalar_t__ ah_curchan; } ;


 TYPE_1__* AH_PRIVATE (struct ath_hal*) ;
 int AR_PHY_ERR ;
 int HAL_PHYERR_SPECTRAL ;
 scalar_t__ IS_5GHZ_FAST_CLOCK_EN (struct ath_hal*,scalar_t__) ;
 int MAX_CCA_THRESH ;
 int OS_REG_WRITE (struct ath_hal*,int ,int ) ;
 int ar9300_classify_strong_bins (struct ath_hal*) ;
 int ar9300_disable_dc_offset (struct ath_hal*) ;
 int ar9300_disable_radar (struct ath_hal*) ;
 int ar9300_disable_strong_signal (struct ath_hal*) ;
 int ar9300_disable_weak_signal (struct ath_hal*) ;
 int ar9300_enable_cck_detect (struct ath_hal*) ;
 int ar9300_set_cca_threshold (struct ath_hal*,int ) ;
 int ar9300_set_radar_dc_thresh (struct ath_hal*) ;

void ar9300_prep_spectral_scan(struct ath_hal *ah)
{
    ar9300_disable_radar(ah);
    ar9300_classify_strong_bins(ah);
    ar9300_disable_dc_offset(ah);
    if (AH_PRIVATE(ah)->ah_curchan &&
        IS_5GHZ_FAST_CLOCK_EN(ah, AH_PRIVATE(ah)->ah_curchan))
    {
        ar9300_enable_cck_detect(ah);
    }







    OS_REG_WRITE(ah, AR_PHY_ERR, HAL_PHYERR_SPECTRAL);
}
