
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct ath_hal {int dummy; } ;


 int AR_TSF_L32 ;
 int AR_TSF_U32 ;
 int OS_REG_WRITE (struct ath_hal*,int ,int) ;

__attribute__((used)) static void
ar9300_freebsd_set_tsf64(struct ath_hal *ah, uint64_t tsf64)
{





 OS_REG_WRITE(ah, AR_TSF_L32, tsf64 & 0xffffffff);
 OS_REG_WRITE(ah, AR_TSF_U32, (tsf64 >> 32) & 0xffffffff);
}
