
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * pool; } ;
typedef TYPE_1__ svn_fs_t ;
typedef int svn_cache__t ;
struct txn_cleanup_baton_t {int * fs_pool; int * txn_pool; int ** to_reset; int * txn_cache; } ;
typedef int apr_pool_t ;


 struct txn_cleanup_baton_t* apr_palloc (int *,int) ;
 int apr_pool_cleanup_null ;
 int apr_pool_cleanup_register (int *,struct txn_cleanup_baton_t*,int ,int ) ;
 int remove_txn_cache_fs ;
 int remove_txn_cache_txn ;

__attribute__((used)) static void
init_txn_callbacks(svn_fs_t *fs,
                   svn_cache__t **cache,
                   apr_pool_t *pool)
{
  if (*cache != ((void*)0))
    {
      struct txn_cleanup_baton_t *baton;

      baton = apr_palloc(pool, sizeof(*baton));
      baton->txn_cache = *cache;
      baton->to_reset = cache;
      baton->txn_pool = pool;
      baton->fs_pool = fs->pool;





      apr_pool_cleanup_register(pool,
                                baton,
                                remove_txn_cache_txn,
                                apr_pool_cleanup_null);
      apr_pool_cleanup_register(fs->pool,
                                baton,
                                remove_txn_cache_fs,
                                apr_pool_cleanup_null);
    }
}
