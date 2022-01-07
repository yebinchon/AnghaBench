
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct slabhash {size_t size; struct slabhash* array; } ;


 int free (struct slabhash*) ;
 int lruhash_delete (struct slabhash) ;

void slabhash_delete(struct slabhash* sl)
{
 if(!sl)
  return;
 if(sl->array) {
  size_t i;
  for(i=0; i<sl->size; i++)
   lruhash_delete(sl->array[i]);
  free(sl->array);
 }
 free(sl);
}
