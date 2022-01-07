
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_wc_notify_func2_t ;
typedef int svn_wc_adm_access_t ;
typedef int svn_error_t ;
typedef int svn_cancel_func_t ;
typedef int svn_boolean_t ;
typedef int apr_pool_t ;


 int SVN_DEPTH_INFINITY_OR_EMPTY (int ) ;
 int * svn_wc_revert3 (char const*,int *,int ,int ,int *,int ,void*,int ,void*,int *) ;

svn_error_t *
svn_wc_revert2(const char *path,
               svn_wc_adm_access_t *parent_access,
               svn_boolean_t recursive,
               svn_boolean_t use_commit_times,
               svn_cancel_func_t cancel_func,
               void *cancel_baton,
               svn_wc_notify_func2_t notify_func,
               void *notify_baton,
               apr_pool_t *pool)
{
  return svn_wc_revert3(path, parent_access,
                        SVN_DEPTH_INFINITY_OR_EMPTY(recursive),
                        use_commit_times, ((void*)0), cancel_func, cancel_baton,
                        notify_func, notify_baton, pool);
}
