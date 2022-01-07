
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath_hal {int dummy; } ;
typedef int HAL_INT ;


 int ar9300_set_interrupts (struct ath_hal*,int ,int ) ;

HAL_INT
ar9300_set_interrupts_freebsd(struct ath_hal *ah, HAL_INT ints)
{


 return ar9300_set_interrupts(ah, ints, 0);
}
