
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u_int32_t ;
struct ieee80211_channel {int dummy; } ;
struct ath_hal {int dummy; } ;
struct TYPE_3__ {int synth_center; } ;
typedef TYPE_1__ CHAN_CENTERS ;


 int AR_PHY_SGI_DELTA ;
 int AR_PHY_SGI_DSC_EXP ;
 int AR_PHY_SGI_DSC_MAN ;
 int AR_PHY_TIMING3 ;
 int AR_PHY_TIMING3_DSC_EXP ;
 int AR_PHY_TIMING3_DSC_MAN ;
 int COEFF ;
 scalar_t__ IEEE80211_IS_CHAN_HALF (struct ieee80211_channel*) ;
 scalar_t__ IEEE80211_IS_CHAN_QUARTER (struct ieee80211_channel*) ;
 int OS_REG_RMW_FIELD (struct ath_hal*,int ,int ,int) ;
 int ar9300_get_channel_centers (struct ath_hal*,struct ieee80211_channel*,TYPE_1__*) ;
 int ar9300_get_delta_slope_values (struct ath_hal*,int,int*,int*) ;

__attribute__((used)) static void
ar9300_set_delta_slope(struct ath_hal *ah, struct ieee80211_channel *chan)
{
    u_int32_t coef_scaled, ds_coef_exp, ds_coef_man;
    u_int32_t fclk = COEFF;

    u_int32_t clock_mhz_scaled = 0x1000000 * fclk;
    CHAN_CENTERS centers;





    if (IEEE80211_IS_CHAN_HALF(chan)) {
        clock_mhz_scaled = clock_mhz_scaled >> 1;
    } else if (IEEE80211_IS_CHAN_QUARTER(chan)) {
        clock_mhz_scaled = clock_mhz_scaled >> 2;
    }





    ar9300_get_channel_centers(ah, chan, &centers);
    coef_scaled = clock_mhz_scaled / centers.synth_center;

    ar9300_get_delta_slope_values(ah, coef_scaled, &ds_coef_man, &ds_coef_exp);

    OS_REG_RMW_FIELD(ah, AR_PHY_TIMING3, AR_PHY_TIMING3_DSC_MAN, ds_coef_man);
    OS_REG_RMW_FIELD(ah, AR_PHY_TIMING3, AR_PHY_TIMING3_DSC_EXP, ds_coef_exp);





    coef_scaled = (9 * coef_scaled) / 10;

    ar9300_get_delta_slope_values(ah, coef_scaled, &ds_coef_man, &ds_coef_exp);


    OS_REG_RMW_FIELD(ah, AR_PHY_SGI_DELTA, AR_PHY_SGI_DSC_MAN, ds_coef_man);
    OS_REG_RMW_FIELD(ah, AR_PHY_SGI_DELTA, AR_PHY_SGI_DSC_EXP, ds_coef_exp);
}
