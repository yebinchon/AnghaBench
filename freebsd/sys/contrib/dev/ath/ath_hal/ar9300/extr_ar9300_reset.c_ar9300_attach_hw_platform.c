
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath_hal_9300 {int ah_hwp; } ;
struct ath_hal {int dummy; } ;


 struct ath_hal_9300* AH9300 (struct ath_hal*) ;
 int HAL_TRUE_CHIP ;

__attribute__((used)) static inline void
ar9300_attach_hw_platform(struct ath_hal *ah)
{
    struct ath_hal_9300 *ahp = AH9300(ah);

    ahp->ah_hwp = HAL_TRUE_CHIP;
    return;
}
