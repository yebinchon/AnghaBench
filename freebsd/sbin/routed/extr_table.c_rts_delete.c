
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rt_spare {int dummy; } ;
struct rt_entry {int dummy; } ;


 struct rt_spare rts_empty ;
 int trace_upslot (struct rt_entry*,struct rt_spare*,struct rt_spare*) ;

void
rts_delete(struct rt_entry *rt,
    struct rt_spare *rts)
{
 trace_upslot(rt, rts, &rts_empty);
 *rts = rts_empty;
}
