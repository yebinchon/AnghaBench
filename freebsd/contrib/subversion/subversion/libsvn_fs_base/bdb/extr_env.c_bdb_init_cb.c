
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_error_t ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int TRUE ;
 int apr_hash_make (int ) ;
 int apr_pool_cleanup_null ;
 int apr_pool_cleanup_register (int ,int *,int ,int ) ;
 int bdb_cache ;
 int bdb_cache_lock ;
 int bdb_cache_pool ;
 int clear_cache ;
 int svn_mutex__init (int *,int ,int ) ;
 int svn_pool_create (int *) ;

__attribute__((used)) static svn_error_t *
bdb_init_cb(void *baton, apr_pool_t *pool)
{
  bdb_cache_pool = svn_pool_create(pool);
  bdb_cache = apr_hash_make(bdb_cache_pool);

  SVN_ERR(svn_mutex__init(&bdb_cache_lock, TRUE, bdb_cache_pool));
  apr_pool_cleanup_register(bdb_cache_pool, ((void*)0), clear_cache,
                            apr_pool_cleanup_null);

  return SVN_NO_ERROR;
}
