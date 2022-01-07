
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ck_array {int n_entries; struct _ck_array* transaction; TYPE_1__* allocator; struct _ck_array* active; } ;
struct _ck_array {int length; void** values; } ;
struct TYPE_2__ {struct _ck_array* (* realloc ) (struct _ck_array*,int,int,int) ;} ;


 int ck_pr_fence_store () ;
 int ck_pr_store_ptr (struct _ck_array**,struct _ck_array*) ;
 int ck_pr_store_uint (int*,unsigned int) ;
 struct _ck_array* stub1 (struct _ck_array*,int,int,int) ;
 struct _ck_array* stub2 (struct _ck_array*,int,int,int) ;

bool
ck_array_put(struct ck_array *array, void *value)
{
 struct _ck_array *target;
 unsigned int size;





 if (array->transaction == ((void*)0)) {
  target = array->active;

  if (array->n_entries == target->length) {
   size = target->length << 1;

   target = array->allocator->realloc(target,
       sizeof(struct _ck_array) + sizeof(void *) * array->n_entries,
       sizeof(struct _ck_array) + sizeof(void *) * size,
       1);

   if (target == ((void*)0))
    return 0;

   ck_pr_store_uint(&target->length, size);


   ck_pr_fence_store();
   ck_pr_store_ptr(&array->active, target);
  }

  target->values[array->n_entries++] = value;
  return 1;
 }

 target = array->transaction;
 if (array->n_entries == target->length) {
  size = target->length << 1;

  target = array->allocator->realloc(target,
      sizeof(struct _ck_array) + sizeof(void *) * array->n_entries,
      sizeof(struct _ck_array) + sizeof(void *) * size,
      1);

  if (target == ((void*)0))
   return 0;

  target->length = size;
  array->transaction = target;
 }

 target->values[array->n_entries++] = value;
 return 0;
}
