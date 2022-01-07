
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct _s_x {char const* s; int x; } ;



char const *
match_value(struct _s_x *p, int value)
{
 for (; p->s != ((void*)0); p++)
  if (p->x == value)
   return p->s;
 return ((void*)0);
}
