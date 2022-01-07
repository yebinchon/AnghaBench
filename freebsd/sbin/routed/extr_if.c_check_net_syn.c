
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rt_spare {scalar_t__ rts_metric; int rts_router; int rts_gate; struct interface* rts_ifp; } ;
struct rt_entry {int rt_state; scalar_t__ rt_metric; struct interface* rt_ifp; } ;
struct interface {scalar_t__ int_metric; int int_std_mask; int int_std_addr; int int_state; int int_addr; } ;


 int IS_NEED_NET_SYN ;
 int RS_NET_SYN ;
 int RS_NO_NET_SYN ;
 scalar_t__ have_ripv1_in ;
 scalar_t__ have_ripv1_out ;
 int rtadd (int ,int ,int,struct rt_spare*) ;
 int rtbad_sub (struct rt_entry*) ;
 int rtdelete (struct rt_entry*) ;
 struct rt_entry* rtget (int ,int ) ;

__attribute__((used)) static void
check_net_syn(struct interface *ifp)
{
 struct rt_entry *rt;
 static struct rt_spare new;






 if (have_ripv1_out || have_ripv1_in) {
  ifp->int_state |= IS_NEED_NET_SYN;
  rt = rtget(ifp->int_std_addr, ifp->int_std_mask);
  if (rt != ((void*)0)
      && 0 == (rt->rt_state & RS_NO_NET_SYN)
      && (!(rt->rt_state & RS_NET_SYN)
   || rt->rt_metric > ifp->int_metric)) {
   rtdelete(rt);
   rt = ((void*)0);
  }
  if (rt == ((void*)0)) {
   new.rts_ifp = ifp;
   new.rts_gate = ifp->int_addr;
   new.rts_router = ifp->int_addr;
   new.rts_metric = ifp->int_metric;
   rtadd(ifp->int_std_addr, ifp->int_std_mask,
         RS_NET_SYN, &new);
  }

 } else {
  ifp->int_state &= ~IS_NEED_NET_SYN;

  rt = rtget(ifp->int_std_addr,
      ifp->int_std_mask);
  if (rt != ((void*)0)
      && (rt->rt_state & RS_NET_SYN)
      && rt->rt_ifp == ifp)
   rtbad_sub(rt);
 }
}
