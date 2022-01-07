
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath_hal {int dummy; } ;


 int AR_CR ;
 int OS_REG_WRITE (struct ath_hal*,int ,int ) ;

void
ar9300_enable_receive(struct ath_hal *ah)
{
    OS_REG_WRITE(ah, AR_CR, 0);
}
