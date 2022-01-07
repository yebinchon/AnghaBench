
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct slabhash {int size; int * array; } ;
struct lruhash {int dummy; } ;


 scalar_t__ lruhash_get_mem (int ) ;

size_t slabhash_get_mem(struct slabhash* sl)
{
 size_t i, total = sizeof(*sl);
 total += sizeof(struct lruhash*)*sl->size;
 for(i=0; i<sl->size; i++) {
  total += lruhash_get_mem(sl->array[i]);
 }
 return total;
}
