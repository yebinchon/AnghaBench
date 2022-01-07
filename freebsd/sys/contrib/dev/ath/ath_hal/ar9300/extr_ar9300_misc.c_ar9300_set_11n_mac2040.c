
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u_int32_t ;
struct TYPE_2__ {int ath_hal_cwm_ignore_ext_cca; } ;
struct ath_hal {TYPE_1__ ah_config; } ;
typedef scalar_t__ HAL_HT_MACMODE ;


 scalar_t__ AR_2040_JOINED_RX_CLEAR ;
 int AR_2040_MODE ;
 scalar_t__ HAL_HT_MACMODE_2040 ;
 int OS_REG_WRITE (struct ath_hal*,int ,scalar_t__) ;

void
ar9300_set_11n_mac2040(struct ath_hal *ah, HAL_HT_MACMODE mode)
{
    u_int32_t macmode;


    if (mode == HAL_HT_MACMODE_2040 &&
        !ah->ah_config.ath_hal_cwm_ignore_ext_cca) {
        macmode = AR_2040_JOINED_RX_CLEAR;
    } else {
        macmode = 0;
    }
    OS_REG_WRITE(ah, AR_2040_MODE, macmode);
}
