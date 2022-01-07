
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct txn_cleanup_baton_t {int txn_pool; int ** to_reset; int * txn_cache; } ;
typedef int apr_status_t ;


 int APR_SUCCESS ;
 int apr_pool_cleanup_kill (int ,struct txn_cleanup_baton_t*,int ) ;
 int remove_txn_cache_txn ;

__attribute__((used)) static apr_status_t
remove_txn_cache_fs(void *baton_void)
{
  struct txn_cleanup_baton_t *baton = baton_void;


  if (*baton->to_reset == baton->txn_cache)
    {

      *baton->to_reset = ((void*)0);
    }


  apr_pool_cleanup_kill(baton->txn_pool,
                        baton,
                        remove_txn_cache_txn);

  return APR_SUCCESS;
}
