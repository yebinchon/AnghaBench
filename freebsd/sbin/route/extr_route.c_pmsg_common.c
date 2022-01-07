
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int rmx_locks; } ;
struct rt_msghdr {int rtm_addrs; int rtm_inits; TYPE_1__ rtm_rmx; } ;


 int fflush (int ) ;
 int metricnames ;
 int pmsg_addrs (char*,int ,size_t) ;
 int printb (int ,int ) ;
 int printf (char*) ;
 int stdout ;

__attribute__((used)) static void
pmsg_common(struct rt_msghdr *rtm, size_t msglen)
{

 (void)printf("\nlocks: ");
 printb(rtm->rtm_rmx.rmx_locks, metricnames);
 (void)printf(" inits: ");
 printb(rtm->rtm_inits, metricnames);
 if (msglen > sizeof(struct rt_msghdr))
  pmsg_addrs(((char *)(rtm + 1)), rtm->rtm_addrs,
      msglen - sizeof(struct rt_msghdr));
 else
  (void)fflush(stdout);
}
