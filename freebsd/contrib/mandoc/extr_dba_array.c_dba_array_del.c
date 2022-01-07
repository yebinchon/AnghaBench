
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dba_array {size_t ec; size_t eu; int* em; int ed; } ;



void
dba_array_del(struct dba_array *array)
{
 if (array->ec < array->eu && array->em[array->ec] != -1) {
  array->em[array->ec] = -1;
  array->ed++;
 }
}
