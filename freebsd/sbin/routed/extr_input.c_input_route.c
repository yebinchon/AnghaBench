
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rt_spare {scalar_t__ rts_metric; scalar_t__ rts_router; scalar_t__ rts_de_ag; scalar_t__ rts_time; scalar_t__ rts_gate; scalar_t__ rts_tag; } ;
struct rt_entry {int rt_state; struct rt_spare* rt_spares; } ;
struct netinfo {scalar_t__ n_nhop; } ;
struct interface {int int_state; } ;
typedef scalar_t__ naddr ;


 scalar_t__ BETTER_LINK (struct rt_entry*,struct rt_spare*,struct rt_spare*) ;
 scalar_t__ HOPCNT_INFINITY ;
 int IS_BROKE ;
 int IS_PASSIVE ;
 scalar_t__ MAX_ROUTES ;
 int NUM_SPARES ;
 struct interface* ifwithaddr (scalar_t__,int,int) ;
 scalar_t__ now_stale ;
 int rtadd (scalar_t__,scalar_t__,int ,struct rt_spare*) ;
 int rtchange (struct rt_entry*,int ,struct rt_spare*,int ) ;
 struct rt_entry* rtget (scalar_t__,scalar_t__) ;
 int rts_delete (struct rt_entry*,struct rt_spare*) ;
 int rtswitch (struct rt_entry*,struct rt_spare*) ;
 scalar_t__ total_routes ;
 int trace_upslot (struct rt_entry*,struct rt_spare*,struct rt_spare*) ;

__attribute__((used)) static void
input_route(naddr dst,
     naddr mask,
     struct rt_spare *new,
     struct netinfo *n)
{
 int i;
 struct rt_entry *rt;
 struct rt_spare *rts, *rts0;
 struct interface *ifp1;
 ifp1 = ifwithaddr(dst, 1, 1);
 if (ifp1 != ((void*)0)
     && (!(ifp1->int_state & IS_BROKE)
  || (ifp1->int_state & IS_PASSIVE)))
  return;



 rt = rtget(dst, mask);



 if (rt == ((void*)0)) {


  if (new->rts_metric == HOPCNT_INFINITY)
   return;


  if (n->n_nhop != 0
      && ifwithaddr(n->n_nhop, 1, 0) != ((void*)0))
   return;




  if (total_routes < MAX_ROUTES)
   rtadd(dst, mask, 0, new);
  return;
 }
 rts0 = rt->rt_spares;
 for (rts = rts0, i = NUM_SPARES; i != 0; i--, rts++) {
  if (rts->rts_router == new->rts_router)
   break;



  if (rts0 == rt->rt_spares
      || BETTER_LINK(rt, rts0, rts))
   rts0 = rts;
 }
 if (i != 0) {
  if (new->rts_de_ag > rts->rts_de_ag
      && now_stale <= rts->rts_time)
   return;




  if (rts->rts_metric == HOPCNT_INFINITY
      && new->rts_metric == HOPCNT_INFINITY)
   new->rts_time = rts->rts_time;




  if (i == NUM_SPARES) {
   rtchange(rt, rt->rt_state, new, 0);


   if (new->rts_metric > rts->rts_metric)
    rtswitch(rt, 0);
   return;
  }




  if (rts->rts_gate == new->rts_gate
      && rts->rts_metric == new->rts_metric
      && rts->rts_tag == new->rts_tag) {
   trace_upslot(rt, rts, new);
   *rts = *new;
   return;
  }


  if (new->rts_metric == HOPCNT_INFINITY) {
   rts_delete(rt, rts);
   return;
  }

 } else {





  if (n->n_nhop != 0
      && ((void*)0) != ifwithaddr(n->n_nhop, 1, 0))
   return;


  rts = rts0;






  if (new->rts_metric >= rts->rts_metric)
   return;
 }

 trace_upslot(rt, rts, new);
 *rts = *new;


 rtswitch(rt, rts);
}
