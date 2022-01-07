
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_iter_apr_hash_cb_t ;
typedef int svn_error_t ;
typedef int svn_boolean_t ;
typedef int apr_pool_t ;


 int * SVN_NO_ERROR ;
 int TRUE ;

__attribute__((used)) static svn_error_t *
null_cache_iter(svn_boolean_t *completed,
                void *cache_void,
                svn_iter_apr_hash_cb_t user_cb,
                void *user_baton,
                apr_pool_t *scratch_pool)
{

  if (completed)
    *completed = TRUE;

  return SVN_NO_ERROR;
}
