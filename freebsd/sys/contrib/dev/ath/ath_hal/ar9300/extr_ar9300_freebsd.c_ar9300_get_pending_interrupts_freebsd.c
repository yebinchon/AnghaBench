
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath_hal {int dummy; } ;
typedef int HAL_INT ;
typedef int HAL_BOOL ;


 int HAL_INT_LINE ;
 int ar9300_get_pending_interrupts (struct ath_hal*,int *,int ,int ,int ) ;

HAL_BOOL
ar9300_get_pending_interrupts_freebsd(struct ath_hal *ah, HAL_INT *masked)
{


 return ar9300_get_pending_interrupts(ah, masked, HAL_INT_LINE, 0, 0);
}
