
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_int8_t ;
struct ath_hal {int dummy; } ;
struct TYPE_2__ {int ah_reset_reason; } ;


 TYPE_1__* AH9300 (struct ath_hal*) ;

void
ar9300_set_hal_reset_reason(struct ath_hal *ah, u_int8_t resetreason)
{
    AH9300(ah)->ah_reset_reason = resetreason;
}
