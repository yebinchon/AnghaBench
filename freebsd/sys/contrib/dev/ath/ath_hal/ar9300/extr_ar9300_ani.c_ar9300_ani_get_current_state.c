
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ath_hal {int dummy; } ;
struct ar9300_ani_state {int dummy; } ;
struct TYPE_2__ {struct ar9300_ani_state* ah_curani; } ;


 TYPE_1__* AH9300 (struct ath_hal*) ;

struct ar9300_ani_state *
ar9300_ani_get_current_state(struct ath_hal *ah)
{
    return AH9300(ah)->ah_curani;
}
