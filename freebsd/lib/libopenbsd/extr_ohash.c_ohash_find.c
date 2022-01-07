
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ohash {TYPE_1__* t; } ;
struct TYPE_2__ {scalar_t__ p; } ;


 scalar_t__ DELETED ;

void *
ohash_find(struct ohash *h, unsigned int i)
{
 if (h->t[i].p == DELETED)
  return ((void*)0);
 else
  return (void *)h->t[i].p;
}
