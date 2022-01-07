
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct slabhash {size_t size; int * array; } ;


 int lruhash_clear (int ) ;

void slabhash_clear(struct slabhash* sl)
{
 size_t i;
 if(!sl)
  return;
 for(i=0; i<sl->size; i++)
  lruhash_clear(sl->array[i]);
}
