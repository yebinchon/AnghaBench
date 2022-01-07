
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
struct ath_hal {int dummy; } ;


 int AR_PHY_CHAN_INFO_MEMORY ;
 int AR_PHY_CHAN_INFO_MEMORY_CAPTURE_MASK ;
 int AR_TSF_L32 ;
 int OS_REG_READ (struct ath_hal*,int ) ;
 int OS_REG_WRITE (struct ath_hal*,int ,int) ;

u_int32_t
ar9300_ppm_arm_trigger(struct ath_hal *ah)
{
    u_int32_t val;
    u_int32_t ret;

    val = OS_REG_READ(ah, AR_PHY_CHAN_INFO_MEMORY);
    ret = OS_REG_READ(ah, AR_TSF_L32);
    OS_REG_WRITE(ah, AR_PHY_CHAN_INFO_MEMORY,
        val | AR_PHY_CHAN_INFO_MEMORY_CAPTURE_MASK);


    return ret;
}
