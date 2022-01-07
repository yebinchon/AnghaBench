
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
struct ath_hal {int dummy; } ;


 int AR_TSF_L32 ;
 int OS_REG_READ (struct ath_hal*,int ) ;

u_int32_t
ar9300_get_tsf32(struct ath_hal *ah)
{
    return OS_REG_READ(ah, AR_TSF_L32);
}
