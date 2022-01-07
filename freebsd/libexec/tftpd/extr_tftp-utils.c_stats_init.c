
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tftp_stats {int tstart; scalar_t__ amount; scalar_t__ blocks; scalar_t__ retries; scalar_t__ rollovers; } ;


 int gettimeofday (int *,int *) ;

void
stats_init(struct tftp_stats *ts)
{

 ts->amount = 0;
 ts->rollovers = 0;
 ts->retries = 0;
 ts->blocks = 0;
 ts->amount = 0;
 gettimeofday(&(ts->tstart), ((void*)0));
}
