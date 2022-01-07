
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rt_spare {scalar_t__ rts_metric; int rts_time; int rts_router; int rts_gate; struct interface* rts_ifp; } ;
struct rt_entry {int rt_state; } ;
struct khash {scalar_t__ k_metric; int k_mask; int k_dst; int k_gate; } ;
struct interface {int int_addr; } ;
typedef int new ;
struct TYPE_2__ {int tv_sec; } ;


 int RS_STATIC ;
 int loopaddr ;
 int memset (struct rt_spare*,int ,int) ;
 TYPE_1__ now ;
 int rtadd (int ,int ,int,struct rt_spare*) ;
 int rtchange (struct rt_entry*,int,struct rt_spare*,int ) ;
 struct rt_entry* rtget (int ,int ) ;

__attribute__((used)) static void
kern_check_static(struct khash *k,
    struct interface *ifp)
{
 struct rt_entry *rt;
 struct rt_spare new;

 if (k->k_metric == 0)
  return;

 memset(&new, 0, sizeof(new));
 new.rts_ifp = ifp;
 new.rts_gate = k->k_gate;
 new.rts_router = (ifp != ((void*)0)) ? ifp->int_addr : loopaddr;
 new.rts_metric = k->k_metric;
 new.rts_time = now.tv_sec;

 rt = rtget(k->k_dst, k->k_mask);
 if (rt != ((void*)0)) {
  if (!(rt->rt_state & RS_STATIC))
   rtchange(rt, rt->rt_state | RS_STATIC, &new, 0);
 } else {
  rtadd(k->k_dst, k->k_mask, RS_STATIC, &new);
 }
}
