
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath_hal {int dummy; } ;


 int AR_PHY_CHAN_INFO_MEMORY ;
 int AR_PHY_CHAN_INFO_MEMORY_CAPTURE_MASK ;
 int OS_REG_READ (struct ath_hal*,int ) ;

int
ar9300_ppm_get_trigger(struct ath_hal *ah)
{
    if (OS_REG_READ(ah, AR_PHY_CHAN_INFO_MEMORY) &
        AR_PHY_CHAN_INFO_MEMORY_CAPTURE_MASK)
    {

        return 0;
    }


    return 1;
}
