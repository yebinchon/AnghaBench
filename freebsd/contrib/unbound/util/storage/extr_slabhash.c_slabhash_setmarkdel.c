
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct slabhash {size_t size; int * array; } ;
typedef int lruhash_markdelfunc_type ;


 int lruhash_setmarkdel (int ,int ) ;

void slabhash_setmarkdel(struct slabhash* sl, lruhash_markdelfunc_type md)
{
 size_t i;
 for(i=0; i<sl->size; i++) {
  lruhash_setmarkdel(sl->array[i], md);
 }
}
