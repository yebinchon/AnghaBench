
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct timehist {size_t num; TYPE_1__* buckets; } ;
struct TYPE_2__ {scalar_t__ count; } ;



__attribute__((used)) static size_t
timehist_count(struct timehist* hist)
{
 size_t i, res = 0;
 for(i=0; i<hist->num; i++)
  res += hist->buckets[i].count;
 return res;
}
