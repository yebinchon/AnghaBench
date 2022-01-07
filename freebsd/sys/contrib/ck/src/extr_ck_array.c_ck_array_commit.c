
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct _ck_array {int length; int n_committed; } ;
struct TYPE_5__ {int n_entries; struct _ck_array* active; struct _ck_array* transaction; TYPE_1__* allocator; } ;
typedef TYPE_2__ ck_array_t ;
struct TYPE_4__ {int (* free ) (struct _ck_array*,int,int) ;} ;


 int ck_pr_fence_store () ;
 int ck_pr_store_ptr (struct _ck_array**,struct _ck_array*) ;
 int ck_pr_store_uint (int *,int ) ;
 int stub1 (struct _ck_array*,int,int) ;

bool
ck_array_commit(ck_array_t *array)
{
 struct _ck_array *m = array->transaction;

 if (m != ((void*)0)) {
  struct _ck_array *p;

  m->n_committed = array->n_entries;
  ck_pr_fence_store();
  p = array->active;
  ck_pr_store_ptr(&array->active, m);
  array->allocator->free(p, sizeof(struct _ck_array) +
      p->length * sizeof(void *), 1);
  array->transaction = ((void*)0);

  return 1;
 }

 ck_pr_fence_store();
 ck_pr_store_uint(&array->active->n_committed, array->n_entries);
 return 1;
}
