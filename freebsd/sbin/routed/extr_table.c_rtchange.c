
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u_int ;
struct rt_spare {scalar_t__ rts_metric; scalar_t__ rts_time; scalar_t__ rts_gate; int rts_ifp; } ;
struct rt_entry {scalar_t__ rt_metric; scalar_t__ rt_gate; int rt_state; struct rt_spare* rt_spares; void* rt_seqno; } ;
struct TYPE_4__ {scalar_t__ tv_sec; } ;
struct TYPE_3__ {scalar_t__ tv_sec; } ;


 int AGE_RT (int,int ) ;
 scalar_t__ EXPIRE_TIME ;
 scalar_t__ HOPCNT_INFINITY ;
 int RS_SUBNET ;
 scalar_t__ TRACEACTIONS ;
 TYPE_2__ need_kern ;
 TYPE_1__ now ;
 int set_need_flash () ;
 int trace_change (struct rt_entry*,int,struct rt_spare*,char*) ;
 void* update_seqno ;

void
rtchange(struct rt_entry *rt,
  u_int state,
  struct rt_spare *new,
  char *label)
{
 if (rt->rt_metric != new->rts_metric) {




  if (new->rts_metric == HOPCNT_INFINITY) {
   need_kern.tv_sec = now.tv_sec;
   if (new->rts_time >= now.tv_sec - EXPIRE_TIME)
    new->rts_time = now.tv_sec - EXPIRE_TIME;
  }
  rt->rt_seqno = update_seqno;
  set_need_flash();
 }

 if (rt->rt_gate != new->rts_gate) {
  need_kern.tv_sec = now.tv_sec;
  rt->rt_seqno = update_seqno;
  set_need_flash();
 }

 state |= (rt->rt_state & RS_SUBNET);



 if (!AGE_RT(state, new->rts_ifp))
  new->rts_time = now.tv_sec;

 if (TRACEACTIONS)
  trace_change(rt, state, new,
        label ? label : "Chg   ");

 rt->rt_state = state;
 rt->rt_spares[0] = *new;
}
