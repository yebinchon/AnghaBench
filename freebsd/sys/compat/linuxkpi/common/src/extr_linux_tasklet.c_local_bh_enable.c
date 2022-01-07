
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int sched_unpin () ;

void
local_bh_enable(void)
{
 sched_unpin();
}
