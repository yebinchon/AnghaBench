
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rt_spare {int rts_metric; } ;
struct rt_entry {int rt_state; struct rt_spare* rt_spares; } ;


 int HOPCNT_INFINITY ;
 int RS_IF ;
 int RS_LOCAL ;
 int RS_STATIC ;
 int rtchange (struct rt_entry*,int,struct rt_spare*,int ) ;
 int rtswitch (struct rt_entry*,int ) ;

__attribute__((used)) static void
rtbad(struct rt_entry *rt)
{
 struct rt_spare new;


 new = rt->rt_spares[0];
 new.rts_metric = HOPCNT_INFINITY;
 rtchange(rt, rt->rt_state & ~(RS_IF | RS_LOCAL | RS_STATIC), &new, 0);
 rtswitch(rt, 0);
}
