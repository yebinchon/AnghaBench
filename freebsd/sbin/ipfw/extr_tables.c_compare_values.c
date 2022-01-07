
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct _table_value {scalar_t__ spare1; } ;



int
compare_values(const void *_a, const void *_b)
{
 struct _table_value *a, *b;

 a = (struct _table_value *)_a;
 b = (struct _table_value *)_b;

 if (a->spare1 < b->spare1)
  return (-1);
 else if (a->spare1 > b->spare1)
  return (1);

 return (0);
}
