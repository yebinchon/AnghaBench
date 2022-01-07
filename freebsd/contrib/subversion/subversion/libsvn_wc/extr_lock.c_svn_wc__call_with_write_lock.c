
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_wc_context_t ;
typedef int (* svn_wc__with_write_lock_func_t ) (void*,int *,int *) ;
typedef int svn_error_t ;
typedef int svn_boolean_t ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int * svn_error_compose_create (int *,int *) ;
 int * svn_error_trace (int ) ;
 int svn_wc__acquire_write_lock (char const**,int *,char const*,int ,int *,int *) ;
 int * svn_wc__release_write_lock (int *,char const*,int *) ;

svn_error_t *
svn_wc__call_with_write_lock(svn_wc__with_write_lock_func_t func,
                             void *baton,
                             svn_wc_context_t *wc_ctx,
                             const char *local_abspath,
                             svn_boolean_t lock_anchor,
                             apr_pool_t *result_pool,
                             apr_pool_t *scratch_pool)
{
  svn_error_t *err1, *err2;
  const char *lock_root_abspath;

  SVN_ERR(svn_wc__acquire_write_lock(&lock_root_abspath, wc_ctx, local_abspath,
                                     lock_anchor, scratch_pool, scratch_pool));
  err1 = svn_error_trace(func(baton, result_pool, scratch_pool));
  err2 = svn_wc__release_write_lock(wc_ctx, lock_root_abspath, scratch_pool);
  return svn_error_compose_create(err1, err2);
}
