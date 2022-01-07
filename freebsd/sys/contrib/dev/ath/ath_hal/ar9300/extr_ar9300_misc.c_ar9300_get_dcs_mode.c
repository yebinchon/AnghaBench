
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_int32_t ;
struct ath_hal {int dummy; } ;
struct TYPE_2__ {int ah_dcs_enable; } ;


 TYPE_1__* AH9300 (struct ath_hal*) ;

u_int32_t
ar9300_get_dcs_mode(struct ath_hal *ah)
{
    return AH9300(ah)->ah_dcs_enable;
}
