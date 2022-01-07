
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rt_spare {scalar_t__ rts_metric; } ;
struct rt_entry {int rt_state; struct rt_spare* rt_spares; } ;


 int BETTER_LINK (struct rt_entry*,struct rt_spare*,struct rt_spare*) ;
 scalar_t__ HOPCNT_INFINITY ;
 int RS_IF ;
 int RS_MHOME ;
 int RS_NET_SYN ;
 int RS_RDISC ;
 int RS_STATIC ;
 int rtchange (struct rt_entry*,int,struct rt_spare*,char*) ;
 struct rt_spare* rts_better (struct rt_entry*) ;
 struct rt_spare rts_empty ;
 int sprintf (char*,char*,int) ;

void
rtswitch(struct rt_entry *rt,
  struct rt_spare *rts)
{
 struct rt_spare swap;
 char label[10];



 if (0 != (rt->rt_state & (RS_MHOME | RS_STATIC | RS_RDISC
      | RS_NET_SYN | RS_IF)))
  return;


 if (rts == ((void*)0))
  rts = rts_better(rt);



 if (!BETTER_LINK(rt, rts, rt->rt_spares))
  return;

 swap = rt->rt_spares[0];
 (void)sprintf(label, "Use #%d", (int)(rts - rt->rt_spares));
 rtchange(rt, rt->rt_state & ~(RS_NET_SYN | RS_RDISC), rts, label);
 if (swap.rts_metric == HOPCNT_INFINITY) {
  *rts = rts_empty;
 } else {
  *rts = swap;
 }
}
