
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u_int32_t ;
struct ath_hal {int dummy; } ;
struct TYPE_3__ {int halNumGpioPins; } ;
struct TYPE_4__ {TYPE_1__ ah_caps; } ;


 TYPE_2__* AH_PRIVATE (struct ath_hal*) ;
 int AR_GPIO_INTR_POL ;
 int AR_HOSTIF_REG (struct ath_hal*,int ) ;
 int AR_INTR_SYNC_CAUSE_CLR ;
 int AR_INTR_SYNC_ENABLE_GPIO_S ;
 int OS_REG_READ (struct ath_hal*,int ) ;
 int OS_REG_WRITE (struct ath_hal*,int ,int) ;

void
ar9300_gpio_set_polarity(struct ath_hal *ah, u_int32_t pol_map,
                         u_int32_t changed_mask)
{
    u_int32_t gpio_mask;

    gpio_mask = (1 << AH_PRIVATE(ah)->ah_caps.halNumGpioPins) - 1;
    OS_REG_WRITE(ah, AR_HOSTIF_REG(ah, AR_GPIO_INTR_POL), gpio_mask & pol_map);
    OS_REG_WRITE(ah, AR_HOSTIF_REG(ah, AR_INTR_SYNC_CAUSE_CLR),
                 changed_mask << AR_INTR_SYNC_ENABLE_GPIO_S);
    OS_REG_READ(ah, AR_HOSTIF_REG(ah, AR_INTR_SYNC_CAUSE_CLR));

}
