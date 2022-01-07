
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ohash {unsigned int size; TYPE_1__* t; } ;
struct TYPE_2__ {int * p; } ;


 int * DELETED ;

void *
ohash_next(struct ohash *h, unsigned int *pos)
{
 for (; *pos < h->size; (*pos)++)
  if (h->t[*pos].p != DELETED && h->t[*pos].p != ((void*)0))
   return (void *)h->t[(*pos)++].p;
 return ((void*)0);
}
