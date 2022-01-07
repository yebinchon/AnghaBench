
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int mls_list; int mls_lock; } ;
typedef TYPE_1__ multilist_sublist_t ;


 int ASSERT (int) ;
 int MUTEX_HELD (int *) ;
 int list_insert_before (int *,void*,void*) ;
 int list_is_empty (int *) ;
 void* list_prev (int *,void*) ;
 int list_remove (int *,void*) ;

void
multilist_sublist_move_forward(multilist_sublist_t *mls, void *obj)
{
 void *prev = list_prev(&mls->mls_list, obj);

 ASSERT(MUTEX_HELD(&mls->mls_lock));
 ASSERT(!list_is_empty(&mls->mls_list));


 if (prev == ((void*)0))
  return;

 list_remove(&mls->mls_list, obj);
 list_insert_before(&mls->mls_list, prev, obj);
}
