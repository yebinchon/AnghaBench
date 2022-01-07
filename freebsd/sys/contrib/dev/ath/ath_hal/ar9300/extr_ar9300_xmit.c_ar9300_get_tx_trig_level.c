
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_int16_t ;
struct ath_hal {int dummy; } ;
struct TYPE_2__ {int ah_tx_trig_level; } ;


 TYPE_1__* AH9300 (struct ath_hal*) ;

u_int16_t
ar9300_get_tx_trig_level(struct ath_hal *ah)
{
    return (AH9300(ah)->ah_tx_trig_level);
}
