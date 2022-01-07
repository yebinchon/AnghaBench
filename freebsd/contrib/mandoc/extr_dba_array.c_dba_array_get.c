
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dba_array {size_t eu; int* em; void** ep; } ;
typedef size_t int32_t ;



void *
dba_array_get(struct dba_array *array, int32_t ie)
{
 if (ie < 0 || ie >= array->eu || array->em[ie] == -1)
  return ((void*)0);
 return array->ep[ie];
}
