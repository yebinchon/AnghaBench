
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct svc_req {int dummy; } ;
typedef int statsswtch ;
struct TYPE_2__ {int s2; } ;


 scalar_t__ sincelastreq ;
 int stat_init () ;
 int stat_is_init ;
 TYPE_1__ stats_all ;

statsswtch *
rstatproc_stats_2_svc(void *argp, struct svc_req *rqstp)
{
    if (! stat_is_init)
        stat_init();
    sincelastreq = 0;
    return(&stats_all.s2);
}
