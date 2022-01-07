
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ u_int ;
struct recvbuf {int dummy; } ;
struct TYPE_4__ {scalar_t__ ifnum; struct TYPE_4__* elink; } ;
typedef TYPE_1__ endpt ;


 int ctl_flushpkt (int ) ;
 TYPE_1__* ep_list ;
 int send_ifstats_entry (TYPE_1__*,scalar_t__) ;
 scalar_t__ sys_ifnum ;

__attribute__((used)) static void
read_ifstats(
 struct recvbuf * rbufp
 )
{
 u_int ifidx;
 endpt * la;





 for (ifidx = 0; ifidx < sys_ifnum; ifidx++) {
  for (la = ep_list; la != ((void*)0); la = la->elink)
   if (ifidx == la->ifnum)
    break;
  if (((void*)0) == la)
   continue;

  send_ifstats_entry(la, ifidx);
 }
 ctl_flushpkt(0);
}
