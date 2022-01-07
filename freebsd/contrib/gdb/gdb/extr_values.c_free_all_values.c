
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct value {int dummy; } ;


 struct value* VALUE_NEXT (struct value*) ;
 struct value* all_values ;
 int value_free (struct value*) ;

void
free_all_values (void)
{
  struct value *val;
  struct value *next;

  for (val = all_values; val; val = next)
    {
      next = VALUE_NEXT (val);
      value_free (val);
    }

  all_values = 0;
}
