
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ck_malloc {int * free; int * malloc; int * realloc; } ;
struct ck_array {int * transaction; struct _ck_array* active; struct ck_malloc* allocator; scalar_t__ n_entries; } ;
struct _ck_array {int dummy; } ;


 struct _ck_array* ck_array_create (struct ck_malloc*,unsigned int) ;

bool
ck_array_init(struct ck_array *array, unsigned int mode, struct ck_malloc *allocator, unsigned int length)
{
 struct _ck_array *active;

 (void)mode;

 if (allocator->realloc == ((void*)0) ||
     allocator->malloc == ((void*)0) ||
     allocator->free == ((void*)0) ||
     length == 0)
  return 0;

 active = ck_array_create(allocator, length);
 if (active == ((void*)0))
  return 0;

 array->n_entries = 0;
 array->allocator = allocator;
 array->active = active;
 array->transaction = ((void*)0);
 return 1;
}
