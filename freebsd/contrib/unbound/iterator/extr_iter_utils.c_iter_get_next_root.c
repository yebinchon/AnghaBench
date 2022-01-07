
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint16_t ;
struct iter_hints {int dummy; } ;
struct iter_forwards {int dummy; } ;


 int forwards_next_root (struct iter_forwards*,scalar_t__*) ;
 int hints_next_root (struct iter_hints*,scalar_t__*) ;

int
iter_get_next_root(struct iter_hints* hints, struct iter_forwards* fwd,
 uint16_t* c)
{
 uint16_t c1 = *c, c2 = *c;
 int r1 = hints_next_root(hints, &c1);
 int r2 = forwards_next_root(fwd, &c2);
 if(!r1 && !r2)
  return 0;
 else if(!r1)
  *c = c2;
 else if(!r2)
  *c = c1;
 else if(c1 < c2)
  *c = c1;
 else *c = c2;
 return 1;
}
