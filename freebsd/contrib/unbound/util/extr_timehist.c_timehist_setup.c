
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timehist {int num; struct th_buck* buckets; } ;
struct th_buck {int dummy; } ;


 int NUM_BUCKETS_HIST ;
 scalar_t__ calloc (int,int) ;
 int dosetup (struct timehist*) ;
 int free (struct timehist*) ;

struct timehist* timehist_setup(void)
{
 struct timehist* hist = (struct timehist*)calloc(1,
  sizeof(struct timehist));
 if(!hist)
  return ((void*)0);
 hist->num = NUM_BUCKETS_HIST;
 hist->buckets = (struct th_buck*)calloc(hist->num,
  sizeof(struct th_buck));
 if(!hist->buckets) {
  free(hist);
  return ((void*)0);
 }

 dosetup(hist);
 return hist;
}
