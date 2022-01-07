
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct svc_req {int dummy; } ;


 int haveadisk () ;
 scalar_t__ sincelastreq ;
 int stat_init () ;
 int stat_is_init ;

u_int *
rstatproc_havedisk_3_svc(void *argp, struct svc_req *rqstp)
{
    static u_int have;

    if (! stat_is_init)
        stat_init();
    sincelastreq = 0;
    have = haveadisk();
 return(&have);
}
