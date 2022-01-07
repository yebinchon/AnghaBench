
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct timeval {int dummy; } ;
struct timehist {size_t num; TYPE_1__* buckets; } ;
struct TYPE_2__ {int count; int upper; } ;


 scalar_t__ timeval_smaller (struct timeval*,int *) ;

void timehist_insert(struct timehist* hist, struct timeval* tv)
{
 size_t i;
 for(i=0; i<hist->num; i++) {
  if(timeval_smaller(tv, &hist->buckets[i].upper)) {
   hist->buckets[i].count++;
   return;
  }
 }

 hist->buckets[hist->num-1].count++;
}
