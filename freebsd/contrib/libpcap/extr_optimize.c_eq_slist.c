
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ code; scalar_t__ k; } ;
struct slist {struct slist* next; TYPE_1__ s; } ;


 scalar_t__ NOP ;

__attribute__((used)) static int
eq_slist(struct slist *x, struct slist *y)
{
 for (;;) {
  while (x && x->s.code == NOP)
   x = x->next;
  while (y && y->s.code == NOP)
   y = y->next;
  if (x == 0)
   return y == 0;
  if (y == 0)
   return x == 0;
  if (x->s.code != y->s.code || x->s.k != y->s.k)
   return 0;
  x = x->next;
  y = y->next;
 }
}
