
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rt_spare {int dummy; } ;
struct rt_entry {struct rt_spare* rt_spares; } ;


 scalar_t__ BETTER_LINK (struct rt_entry*,struct rt_spare*,struct rt_spare*) ;
 int NUM_SPARES ;

__attribute__((used)) static struct rt_spare *
rts_better(struct rt_entry *rt)
{
 struct rt_spare *rts, *rts1;
 int i;


 rts = rt->rt_spares+1;
 for (i = NUM_SPARES, rts1 = rts+1; i > 2; i--, rts1++) {
  if (BETTER_LINK(rt,rts1,rts))
   rts = rts1;
 }

 return rts;
}
