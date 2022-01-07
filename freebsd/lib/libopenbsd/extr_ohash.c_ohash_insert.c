
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ohash {int total; int size; TYPE_1__* t; int deleted; } ;
struct TYPE_2__ {void* p; } ;


 void* DELETED ;
 int STAT_HASH_ENTRIES ;
 int ohash_resize (struct ohash*) ;

void *
ohash_insert(struct ohash *h, unsigned int i, void *p)
{



 if (h->t[i].p == DELETED) {
  h->deleted--;
  h->t[i].p = p;
 } else {
  h->t[i].p = p;

  if (++h->total * 4 > h->size * 3)
   ohash_resize(h);
 }
 return p;
}
