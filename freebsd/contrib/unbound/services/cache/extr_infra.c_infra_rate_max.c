
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int time_t ;
struct rate_data {int* timestamp; int* qps; } ;


 int RATE_WINDOW ;

int infra_rate_max(void* data, time_t now)
{
 struct rate_data* d = (struct rate_data*)data;
 int i, max = 0;
 for(i=0; i<RATE_WINDOW; i++) {
  if(now-d->timestamp[i] <= RATE_WINDOW) {
   if(d->qps[i] > max)
    max = d->qps[i];
  }
 }
 return max;
}
