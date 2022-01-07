
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct slist {struct slist* next; } ;



void
sappend(struct slist *s0, struct slist *s1)
{




 while (s0->next)
  s0 = s0->next;
 s0->next = s1;
}
