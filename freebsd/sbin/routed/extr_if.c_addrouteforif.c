
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rt_spare {scalar_t__ rts_router; scalar_t__ rts_gate; int rts_time; int rts_metric; struct interface* rts_ifp; } ;
struct rt_entry {scalar_t__ rt_router; int rt_state; struct interface* rt_ifp; } ;
struct interface {int int_state; int int_if_flags; scalar_t__ int_addr; int int_mask; int int_name; int int_transitions; int int_metric; int int_net; int int_dstaddr; } ;
typedef int naddr ;
struct TYPE_2__ {int tv_sec; } ;


 int IFF_LOOPBACK ;
 int IFF_POINTOPOINT ;
 int IS_BROKE ;
 int IS_DUP ;
 int IS_EXTERNAL ;
 int IS_REMOTE ;
 int IS_SUBNET ;
 int RS_IF ;
 int RS_LOCAL ;
 int RS_NET_SYN ;
 int check_net_syn (struct interface*) ;
 int check_remote (struct interface*) ;
 int del_static (int ,int ,int ,int ) ;
 int htonl (int ) ;
 TYPE_1__ now ;
 int rtadd (int ,int ,int,struct rt_spare*) ;
 int rtchange (struct rt_entry*,int,struct rt_spare*,int ) ;
 int rtdelete (struct rt_entry*) ;
 struct rt_entry* rtget (int ,int ) ;
 int trace_act (char*,int ) ;

__attribute__((used)) static int
addrouteforif(struct interface *ifp)
{
 struct rt_entry *rt;
 static struct rt_spare new;
 naddr dst;




 if (ifp->int_state & IS_BROKE)
  return 0;




 if (ifp->int_state & IS_SUBNET)
  check_net_syn(ifp);

 dst = (0 != (ifp->int_if_flags & (IFF_POINTOPOINT | IFF_LOOPBACK))
        ? ifp->int_dstaddr
        : htonl(ifp->int_net));

 new.rts_ifp = ifp;
 new.rts_router = ifp->int_addr;
 new.rts_gate = ifp->int_addr;
 new.rts_metric = ifp->int_metric;
 new.rts_time = now.tv_sec;




 if ((ifp->int_state & IS_REMOTE)
     && !(ifp->int_state & IS_EXTERNAL)
     && !check_remote(ifp))
  return 0;





 del_static(dst, ifp->int_mask, 0, 0);
 rt = rtget(dst, ifp->int_mask);
 if (rt != ((void*)0)) {
  if ((rt->rt_ifp != ifp
       || rt->rt_router != ifp->int_addr)
      && (!(ifp->int_state & IS_DUP)
   || rt->rt_ifp == 0
   || (rt->rt_ifp->int_state & IS_BROKE))) {
   rtdelete(rt);
   rt = ((void*)0);
  } else {
   rtchange(rt, ((rt->rt_state | RS_IF)
          & ~(RS_NET_SYN | RS_LOCAL)),
     &new, 0);
  }
 }
 if (rt == ((void*)0)) {
  if (ifp->int_transitions++ > 0)
   trace_act("re-install interface %s",
      ifp->int_name);

  rtadd(dst, ifp->int_mask, RS_IF, &new);
 }

 return 1;
}
