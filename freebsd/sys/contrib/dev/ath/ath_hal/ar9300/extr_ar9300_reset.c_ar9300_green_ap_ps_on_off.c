
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_int16_t ;
struct ath_hal {int dummy; } ;
struct TYPE_2__ {int green_ap_ps_on; } ;


 TYPE_1__* AH9300 (struct ath_hal*) ;

void
ar9300_green_ap_ps_on_off( struct ath_hal *ah, u_int16_t on_off)
{

    AH9300(ah)->green_ap_ps_on = !!on_off;
}
