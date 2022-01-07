
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath_hal {int dummy; } ;
typedef int HAL_BOOL ;
typedef int HAL_ANT_SETTING ;


 int AH_TRUE ;

__attribute__((used)) static HAL_BOOL
ar9300_freebsd_set_antenna_switch(struct ath_hal *ah, HAL_ANT_SETTING setting)
{

 return (AH_TRUE);
}
