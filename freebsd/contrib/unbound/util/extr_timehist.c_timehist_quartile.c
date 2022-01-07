
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct timehist {size_t num; TYPE_3__* buckets; } ;
struct TYPE_5__ {scalar_t__ tv_usec; scalar_t__ tv_sec; } ;
struct TYPE_4__ {scalar_t__ tv_usec; scalar_t__ tv_sec; } ;
struct TYPE_6__ {scalar_t__ count; TYPE_2__ upper; TYPE_1__ lower; } ;


 scalar_t__ timehist_count (struct timehist*) ;

double
timehist_quartile(struct timehist* hist, double q)
{
 double lookfor, passed, res;
 double low = 0, up = 0;
 size_t i;
 if(!hist || hist->num == 0)
  return 0.;

 lookfor = (double)timehist_count(hist);
 if(lookfor < 4)
  return 0.;
 lookfor *= q;
 passed = 0;
 i = 0;
 while(i+1 < hist->num &&
  passed+(double)hist->buckets[i].count < lookfor) {
  passed += (double)hist->buckets[i++].count;
 }


 low = (double)hist->buckets[i].lower.tv_sec +
  (double)hist->buckets[i].lower.tv_usec/1000000.;
 up = (double)hist->buckets[i].upper.tv_sec +
  (double)hist->buckets[i].upper.tv_usec/1000000.;

 res = (lookfor - passed)*(up-low)/((double)hist->buckets[i].count);
 return low+res;
}
