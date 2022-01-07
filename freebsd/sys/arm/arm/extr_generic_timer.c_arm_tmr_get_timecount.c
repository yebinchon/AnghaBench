
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct timecounter {int dummy; } ;
struct TYPE_2__ {int (* get_cntxct ) (int ) ;int physical; } ;


 TYPE_1__* arm_tmr_sc ;
 int stub1 (int ) ;

__attribute__((used)) static unsigned
arm_tmr_get_timecount(struct timecounter *tc)
{

 return (arm_tmr_sc->get_cntxct(arm_tmr_sc->physical));
}
