
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct slabhash {size_t size; int * array; } ;


 int lruhash_traverse (int ,int,void (*) (struct lruhash_entry*,void*),void*) ;

void slabhash_traverse(struct slabhash* sh, int wr,
 void (*func)(struct lruhash_entry*, void*), void* arg)
{
 size_t i;
 for(i=0; i<sh->size; i++)
  lruhash_traverse(sh->array[i], wr, func, arg);
}
