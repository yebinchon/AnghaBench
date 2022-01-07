
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int64_t ;
struct ath_hal {int dummy; } ;


 int AR_TSF_L32 ;
 int AR_TSF_U32 ;
 int OS_REG_READ (struct ath_hal*,int ) ;

u_int64_t
ar9300_get_tsf64(struct ath_hal *ah)
{
    u_int64_t tsf;


    tsf = OS_REG_READ(ah, AR_TSF_U32);
    tsf = (tsf << 32) | OS_REG_READ(ah, AR_TSF_L32);
    return tsf;
}
