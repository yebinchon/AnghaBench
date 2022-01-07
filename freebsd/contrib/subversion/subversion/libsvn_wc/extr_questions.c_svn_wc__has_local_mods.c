
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int db; } ;
typedef TYPE_1__ svn_wc_context_t ;
typedef int svn_error_t ;
typedef int svn_cancel_func_t ;
typedef int svn_boolean_t ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int svn_wc__node_has_local_mods (int *,int *,int ,char const*,int ,int ,void*,int *) ;

svn_error_t *
svn_wc__has_local_mods(svn_boolean_t *is_modified,
                       svn_wc_context_t *wc_ctx,
                       const char *local_abspath,
                       svn_boolean_t ignore_unversioned,
                       svn_cancel_func_t cancel_func,
                       void *cancel_baton,
                       apr_pool_t *scratch_pool)
{
  svn_boolean_t modified;

  SVN_ERR(svn_wc__node_has_local_mods(&modified, ((void*)0),
                                      wc_ctx->db, local_abspath,
                                      ignore_unversioned,
                                      cancel_func, cancel_baton,
                                      scratch_pool));

  *is_modified = modified;
  return SVN_NO_ERROR;
}
