
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timespec {int dummy; } ;
struct snapshot {struct timespec time; } ;



void
geom_stats_snapshot_timestamp(void *arg, struct timespec *tp)
{
 struct snapshot *sp;

 sp = arg;
 *tp = sp->time;
}
