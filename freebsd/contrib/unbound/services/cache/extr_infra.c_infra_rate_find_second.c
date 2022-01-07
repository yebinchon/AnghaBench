
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ time_t ;
struct rate_data {scalar_t__* timestamp; int* qps; } ;


 int RATE_WINDOW ;

__attribute__((used)) static int* infra_rate_find_second(void* data, time_t t)
{
 struct rate_data* d = (struct rate_data*)data;
 int i, oldest;
 for(i=0; i<RATE_WINDOW; i++) {
  if(d->timestamp[i] == t)
   return &(d->qps[i]);
 }

 oldest = 0;
 for(i=0; i<RATE_WINDOW; i++) {
  if(d->timestamp[i] < d->timestamp[oldest])
   oldest = i;
 }
 d->timestamp[oldest] = t;
 d->qps[oldest] = 0;
 return &(d->qps[oldest]);
}
