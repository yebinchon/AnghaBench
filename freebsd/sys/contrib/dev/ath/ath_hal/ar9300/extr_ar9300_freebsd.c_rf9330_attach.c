
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath_hal {int dummy; } ;
typedef int HAL_STATUS ;
typedef int HAL_BOOL ;


 int AH_FALSE ;
 int HAL_EINVAL ;

__attribute__((used)) static HAL_BOOL
rf9330_attach(struct ath_hal *ah, HAL_STATUS *status)
{

 (*status) = HAL_EINVAL;
 return (AH_FALSE);
}
