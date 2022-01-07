
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_wc__db_wcroot_t ;
typedef int svn_wc__db_status_t ;
typedef int svn_revnum_t ;
typedef int svn_error_t ;
typedef int apr_pool_t ;
typedef int apr_int64_t ;


 int scan_addition (int *,char const**,char const**,int *,char const**,int *,int *,int *,int *,int *,int *,char const*,int *,int *) ;
 int * svn_error_trace (int ) ;

svn_error_t *
svn_wc__db_scan_addition_internal(
              svn_wc__db_status_t *status,
              const char **op_root_relpath_p,
              const char **repos_relpath,
              apr_int64_t *repos_id,
              const char **original_repos_relpath,
              apr_int64_t *original_repos_id,
              svn_revnum_t *original_revision,
              svn_wc__db_wcroot_t *wcroot,
              const char *local_relpath,
              apr_pool_t *result_pool,
              apr_pool_t *scratch_pool)
{
  return svn_error_trace(
      scan_addition(status, op_root_relpath_p, repos_relpath, repos_id,
                    original_repos_relpath, original_repos_id,
                    original_revision, ((void*)0), ((void*)0), ((void*)0),
                    wcroot, local_relpath, result_pool, scratch_pool));
}
