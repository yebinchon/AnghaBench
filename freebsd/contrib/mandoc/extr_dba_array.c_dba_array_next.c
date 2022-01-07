
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dba_array {size_t ec; size_t eu; int* em; void** ep; } ;



void *
dba_array_next(struct dba_array *array)
{
 if (array->ec < array->eu)
  array->ec++;
 else
  array->ec = 0;
 while (array->ec < array->eu && array->em[array->ec] == -1)
  array->ec++;
 return array->ec < array->eu ? array->ep[array->ec] : ((void*)0);
}
