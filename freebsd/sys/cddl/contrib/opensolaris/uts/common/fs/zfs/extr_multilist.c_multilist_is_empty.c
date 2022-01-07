
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int ml_num_sublists; TYPE_2__* ml_sublists; } ;
typedef TYPE_1__ multilist_t ;
struct TYPE_5__ {int mls_lock; int mls_list; } ;
typedef TYPE_2__ multilist_sublist_t ;
typedef int boolean_t ;


 int FALSE ;
 int MUTEX_HELD (int *) ;
 int TRUE ;
 int list_is_empty (int *) ;
 int mutex_enter (int *) ;
 int mutex_exit (int *) ;

int
multilist_is_empty(multilist_t *ml)
{
 for (int i = 0; i < ml->ml_num_sublists; i++) {
  multilist_sublist_t *mls = &ml->ml_sublists[i];

  boolean_t need_lock = !MUTEX_HELD(&mls->mls_lock);

  if (need_lock)
   mutex_enter(&mls->mls_lock);

  if (!list_is_empty(&mls->mls_list)) {
   if (need_lock)
    mutex_exit(&mls->mls_lock);

   return (FALSE);
  }

  if (need_lock)
   mutex_exit(&mls->mls_lock);
 }

 return (TRUE);
}
