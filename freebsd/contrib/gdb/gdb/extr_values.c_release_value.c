
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct value {struct value* next; } ;


 struct value* all_values ;

void
release_value (struct value *val)
{
  struct value *v;

  if (all_values == val)
    {
      all_values = val->next;
      return;
    }

  for (v = all_values; v; v = v->next)
    {
      if (v->next == val)
 {
   v->next = val->next;
   break;
 }
    }
}
