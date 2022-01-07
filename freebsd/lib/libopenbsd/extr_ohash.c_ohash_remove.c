
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ohash {int deleted; int total; TYPE_1__* t; } ;
struct TYPE_2__ {void* p; } ;


 void* DELETED ;
 int MINDELETED ;
 int STAT_HASH_ENTRIES ;
 int ohash_resize (struct ohash*) ;

void *
ohash_remove(struct ohash *h, unsigned int i)
{
 void *result = (void *)h->t[i].p;

 if (result == ((void*)0) || result == DELETED)
  return ((void*)0);




 h->t[i].p = DELETED;
 h->deleted++;
 if (h->deleted >= MINDELETED && 4 * h->deleted > h->total)
  ohash_resize(h);
 return result;
}
