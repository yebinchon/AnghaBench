
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath_hal {int dummy; } ;
typedef int HAL_ANT_SETTING ;


 int HAL_ANT_VARIABLE ;

__attribute__((used)) static HAL_ANT_SETTING
ar9300_freebsd_get_antenna_switch(struct ath_hal *ah)
{

 return (HAL_ANT_VARIABLE);
}
