
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dba_array {size_t ea; size_t eu; int flags; scalar_t__* em; void** ep; } ;
typedef size_t int32_t ;


 int DBA_STR ;
 int assert (int) ;
 void* mandoc_strdup (void*) ;

void
dba_array_set(struct dba_array *array, int32_t ie, void *entry)
{
 assert(ie >= 0);
 assert(ie < array->ea);
 assert(ie <= array->eu);
 if (ie == array->eu)
  array->eu++;
 if (array->flags & DBA_STR)
  entry = mandoc_strdup(entry);
 array->ep[ie] = entry;
 array->em[ie] = 0;
}
