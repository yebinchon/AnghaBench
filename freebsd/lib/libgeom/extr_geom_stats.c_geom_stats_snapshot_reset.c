
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snapshot {scalar_t__ v; scalar_t__ u; } ;



void
geom_stats_snapshot_reset(void *arg)
{
 struct snapshot *sp;

 sp = arg;
 sp->u = sp->v = 0;
}
