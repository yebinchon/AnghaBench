
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ck_array {unsigned int n_entries; TYPE_2__* active; TYPE_1__* transaction; } ;
struct TYPE_4__ {void** values; } ;
struct TYPE_3__ {void** values; } ;


 int ck_array_put (struct ck_array*,void*) ;

int
ck_array_put_unique(struct ck_array *array, void *value)
{
 unsigned int i, limit;
 void **v;

 limit = array->n_entries;
 if (array->transaction != ((void*)0)) {
  v = array->transaction->values;
 } else {
  v = array->active->values;
 }

 for (i = 0; i < limit; i++) {
  if (v[i] == value)
   return 1;
 }

 return -!ck_array_put(array, value);
}
