
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ath_hal {int dummy; } ;
struct TYPE_2__ {int ah_mask_reg; } ;
typedef int HAL_INT ;


 TYPE_1__* AH9300 (struct ath_hal*) ;

HAL_INT
ar9300_get_interrupts(struct ath_hal *ah)
{
    return AH9300(ah)->ah_mask_reg;
}
