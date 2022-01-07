
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timehist {struct timehist* buckets; } ;


 int free (struct timehist*) ;

void timehist_delete(struct timehist* hist)
{
 if(!hist)
  return;
 free(hist->buckets);
 free(hist);
}
