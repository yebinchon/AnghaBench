
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {void* is_outer_most_lock; void* is_inner_most_lock; int * lock_pool; struct TYPE_6__* baton; int body; int fs; } ;
typedef TYPE_1__ with_lock_baton_t ;
typedef int lock_id_t ;
typedef int apr_pool_t ;


 void* FALSE ;
 void* TRUE ;
 TYPE_1__* apr_pcalloc (int *,int) ;
 int init_lock_baton (TYPE_1__*,int ) ;
 int with_lock ;

__attribute__((used)) static with_lock_baton_t *
chain_lock_baton(lock_id_t lock_id,
                 with_lock_baton_t *nested)
{

  apr_pool_t *lock_pool = nested->lock_pool;
  with_lock_baton_t *result = apr_pcalloc(lock_pool, sizeof(*result));


  result->fs = nested->fs;



  result->body = with_lock;
  result->baton = nested;


  result->lock_pool = lock_pool;


  result->is_inner_most_lock = FALSE;
  result->is_outer_most_lock = TRUE;
  nested->is_outer_most_lock = FALSE;



  init_lock_baton(result, lock_id);

  return result;
}
