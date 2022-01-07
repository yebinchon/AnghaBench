
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_wc_context_t ;
typedef scalar_t__ svn_node_kind_t ;
typedef int svn_error_t ;
typedef int svn_cancel_func_t ;
typedef int svn_boolean_t ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int TRUE ;
 scalar_t__ svn_node_none ;
 int svn_wc__external_remove (int *,char const*,char const*,int,int ,void*,int *) ;

__attribute__((used)) static svn_error_t *
remove_external2(svn_boolean_t *removed,
                svn_wc_context_t *wc_ctx,
                const char *wri_abspath,
                const char *local_abspath,
                svn_node_kind_t external_kind,
                svn_cancel_func_t cancel_func,
                void *cancel_baton,
                apr_pool_t *scratch_pool)
{
  SVN_ERR(svn_wc__external_remove(wc_ctx, wri_abspath,
                                  local_abspath,
                                  (external_kind == svn_node_none),
                                  cancel_func, cancel_baton,
                                  scratch_pool));

  *removed = TRUE;
  return SVN_NO_ERROR;
}
