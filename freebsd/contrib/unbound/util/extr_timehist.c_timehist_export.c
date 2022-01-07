
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct timehist {size_t num; TYPE_1__* buckets; } ;
struct TYPE_2__ {scalar_t__ count; } ;



void
timehist_export(struct timehist* hist, long long* array, size_t sz)
{
 size_t i;
 if(!hist) return;
 if(sz > hist->num)
  sz = hist->num;
 for(i=0; i<sz; i++)
  array[i] = (long long)hist->buckets[i].count;
}
