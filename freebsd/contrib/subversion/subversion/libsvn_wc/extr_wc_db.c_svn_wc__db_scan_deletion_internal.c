
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_wc__db_wcroot_t ;
typedef int svn_error_t ;
typedef int apr_pool_t ;


 int scan_deletion (char const**,char const**,char const**,char const**,int *,char const*,int *,int *) ;
 int * svn_error_trace (int ) ;

svn_error_t *
svn_wc__db_scan_deletion_internal(
              const char **base_del_relpath,
              const char **moved_to_relpath,
              const char **work_del_relpath,
              const char **moved_to_op_root_relpath,
              svn_wc__db_wcroot_t *wcroot,
              const char *local_relpath,
              apr_pool_t *result_pool,
              apr_pool_t *scratch_pool)
{
  return svn_error_trace(
            scan_deletion(base_del_relpath, moved_to_relpath, work_del_relpath,
                          moved_to_op_root_relpath,
                          wcroot, local_relpath,
                          result_pool, scratch_pool));
}
