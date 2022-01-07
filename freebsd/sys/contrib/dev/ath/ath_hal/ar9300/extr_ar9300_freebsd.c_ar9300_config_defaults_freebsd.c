
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int ath_hal_enable_ani; } ;
struct ath_hal {TYPE_1__ ah_config; } ;
typedef int HAL_OPS_CONFIG ;


 int AH_TRUE ;
 int OS_MEMCPY (TYPE_1__*,int *,int) ;

void
ar9300_config_defaults_freebsd(struct ath_hal *ah, HAL_OPS_CONFIG *ah_config)
{


 OS_MEMCPY(&ah->ah_config, ah_config, sizeof(HAL_OPS_CONFIG));
 ah->ah_config.ath_hal_enable_ani = AH_TRUE;
}
