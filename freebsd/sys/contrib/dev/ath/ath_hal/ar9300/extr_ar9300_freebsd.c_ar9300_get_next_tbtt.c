
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct ath_hal {int dummy; } ;


 int AR_NEXT_TBTT_TIMER ;
 int OS_REG_READ (struct ath_hal*,int ) ;

__attribute__((used)) static uint64_t
ar9300_get_next_tbtt(struct ath_hal *ah)
{
 return (OS_REG_READ(ah, AR_NEXT_TBTT_TIMER));
}
