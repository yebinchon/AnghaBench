
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int (* timer_func ) (int ,int ) ;
struct TYPE_3__ {scalar_t__ sival_int; } ;
struct TYPE_4__ {int si_overrun; TYPE_1__ si_value; } ;
struct sigev_node {scalar_t__ sn_gen; TYPE_2__ sn_info; int sn_value; int (* sn_func ) (int ,int ) ;} ;



__attribute__((used)) static void
timer_dispatch(struct sigev_node *sn)
{
 timer_func f = sn->sn_func;


 if (sn->sn_info.si_value.sival_int == sn->sn_gen)
  f(sn->sn_value, sn->sn_info.si_overrun);
}
