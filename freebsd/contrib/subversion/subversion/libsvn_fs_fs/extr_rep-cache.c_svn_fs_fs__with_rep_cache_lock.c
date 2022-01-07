
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_fs_t ;
typedef int svn_error_t ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int lock_rep_cache (int *,int *) ;
 int * svn_error_compose_create (int *,int ) ;
 int unlock_rep_cache (int *,int *) ;

svn_error_t *
svn_fs_fs__with_rep_cache_lock(svn_fs_t *fs,
                               svn_error_t *(*body)(void *,
                                                    apr_pool_t *),
                               void *baton,
                               apr_pool_t *pool)
{
  svn_error_t *err;

  SVN_ERR(lock_rep_cache(fs, pool));
  err = body(baton, pool);
  return svn_error_compose_create(err, unlock_rep_cache(fs, pool));
}
