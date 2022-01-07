
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ svn_revnum_t ;
typedef int svn_repos_authz_func_t ;
typedef int svn_fs_t ;
typedef int svn_error_t ;
typedef int svn_boolean_t ;
struct path_info {scalar_t__ history_rev; scalar_t__ done; } ;
typedef int apr_pool_t ;


 int * SVN_NO_ERROR ;
 int TRUE ;
 int * get_history (struct path_info*,int *,int ,int ,void*,scalar_t__,int *,int *) ;

__attribute__((used)) static svn_error_t *
check_history(svn_boolean_t *changed,
              struct path_info *info,
              svn_fs_t *fs,
              svn_revnum_t current,
              svn_boolean_t strict,
              svn_repos_authz_func_t authz_read_func,
              void *authz_read_baton,
              svn_revnum_t start,
              apr_pool_t *result_pool,
              apr_pool_t *scratch_pool)
{


  if (info->done)
    return SVN_NO_ERROR;





  if (info->history_rev < current)
    return SVN_NO_ERROR;




  *changed = TRUE;
  return get_history(info, fs, strict, authz_read_func,
                     authz_read_baton, start, result_pool, scratch_pool);
}
