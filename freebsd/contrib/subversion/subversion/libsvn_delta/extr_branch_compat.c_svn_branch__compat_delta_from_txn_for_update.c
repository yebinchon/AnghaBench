
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int svn_error_t ;
typedef int svn_delta_editor_t ;
struct TYPE_6__ {int edit_txn; int set_target_revision_baton; int set_target_revision_func; } ;
typedef TYPE_1__ svn_branch__compat_update_editor3_t ;
struct TYPE_7__ {int ev1_absolute_paths; int baton; int target_revision_func; } ;
typedef TYPE_2__ svn_branch__compat_shim_connector_t ;
typedef int svn_branch__compat_fetch_func_t ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 TYPE_2__* apr_pcalloc (int *,int) ;
 int svn_branch__compat_delta_from_txn_for_commit (int const**,void**,int ,char const*,char const*,int ,void*,TYPE_2__*,int *,int *) ;

svn_error_t *
svn_branch__compat_delta_from_txn_for_update(
                        const svn_delta_editor_t **deditor,
                        void **dedit_baton,
                        svn_branch__compat_update_editor3_t *update_editor,
                        const char *repos_root_url,
                        const char *base_repos_relpath,
                        svn_branch__compat_fetch_func_t fetch_func,
                        void *fetch_baton,
                        apr_pool_t *result_pool,
                        apr_pool_t *scratch_pool)
{
  svn_branch__compat_shim_connector_t *shim_connector
    = apr_pcalloc(result_pool, sizeof(*shim_connector));

  shim_connector->target_revision_func = update_editor->set_target_revision_func;
  shim_connector->baton = update_editor->set_target_revision_baton;




  SVN_ERR(svn_branch__compat_delta_from_txn_for_commit(
                        deditor, dedit_baton,
                        update_editor->edit_txn,
                        repos_root_url, base_repos_relpath,
                        fetch_func, fetch_baton,
                        shim_connector,
                        result_pool, scratch_pool));




  return SVN_NO_ERROR;
}
