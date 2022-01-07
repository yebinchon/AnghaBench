
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u_int32_t ;
struct ath_hal_9300 {unsigned int ah_gpio_cause; } ;
struct ath_hal {int dummy; } ;


 struct ath_hal_9300* AH9300 (struct ath_hal*) ;

u_int32_t
ar9300_gpio_get_intr(struct ath_hal *ah)
{
    unsigned int mask = 0;
    struct ath_hal_9300 *ahp = AH9300(ah);

    mask = ahp->ah_gpio_cause;
    return mask;
}
