
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ sival_int; } ;
struct TYPE_4__ {TYPE_1__ si_value; } ;
struct sigev_node {scalar_t__ sn_gen; int sn_value; TYPE_2__ sn_info; int (* sn_func ) (int ) ;} ;
typedef int (* mq_func ) (int ) ;



__attribute__((used)) static void
mq_dispatch(struct sigev_node *sn)
{
 mq_func f = sn->sn_func;





 if (sn->sn_gen == sn->sn_info.si_value.sival_int)
  f(sn->sn_value);
}
