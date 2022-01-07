
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dba_array {int eu; int ea; int flags; void* em; void* ep; } ;


 int DBA_GROW ;
 int assert (int) ;
 int dba_array_set (struct dba_array*,int,void*) ;
 void* mandoc_reallocarray (void*,int,int) ;

void
dba_array_add(struct dba_array *array, void *entry)
{
 if (array->eu == array->ea) {
  assert(array->flags & DBA_GROW);
  array->ep = mandoc_reallocarray(array->ep,
      2, sizeof(*array->ep) * array->ea);
  array->em = mandoc_reallocarray(array->em,
      2, sizeof(*array->em) * array->ea);
  array->ea *= 2;
 }
 dba_array_set(array, array->eu, entry);
}
