
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ck_array {unsigned int n_entries; struct _ck_array* transaction; struct _ck_array* active; int allocator; } ;
struct _ck_array {void** values; unsigned int n_committed; int length; } ;


 struct _ck_array* ck_array_create (int ,size_t) ;
 int ck_pr_store_ptr (void**,void*) ;
 int memcpy (void**,void**,int) ;

bool
ck_array_remove(struct ck_array *array, void *value)
{
 struct _ck_array *target;
 unsigned int i;

 if (array->transaction != ((void*)0)) {
  target = array->transaction;

  for (i = 0; i < array->n_entries; i++) {
   if (target->values[i] == value) {
    target->values[i] = target->values[--array->n_entries];
    return 1;
   }
  }

  return 0;
 }

 target = array->active;

 for (i = 0; i < array->n_entries; i++) {
  if (target->values[i] == value)
   break;
 }

 if (i == array->n_entries)
  return 0;


 if (target->n_committed != array->n_entries) {
  ck_pr_store_ptr(&target->values[i], target->values[--array->n_entries]);
  return 1;
 }






 target = ck_array_create(array->allocator, array->n_entries);
 if (target == ((void*)0))
  return 0;

 memcpy(target->values, array->active->values, sizeof(void *) * array->n_entries);
 target->length = array->n_entries;
 target->n_committed = array->n_entries;
 target->values[i] = target->values[--array->n_entries];

 array->transaction = target;
 return 1;
}
