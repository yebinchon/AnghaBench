
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int time_t ;
struct timeval {int dummy; } ;
struct comm_base {TYPE_1__* eb; } ;
struct TYPE_2__ {struct timeval now; int secs; } ;



void
comm_base_timept(struct comm_base* b, time_t** tt, struct timeval** tv)
{
 *tt = &b->eb->secs;
 *tv = &b->eb->now;
}
