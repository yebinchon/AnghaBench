
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int svn_error_t ;
typedef int svn_delta_editor_t ;
typedef int svn_cancel_func_t ;
typedef int svn_branch__txn_t ;
struct TYPE_6__ {int unlock_func; int ev1_absolute_paths; int set_target_revision_baton; int set_target_revision_func; int edit_txn; } ;
typedef TYPE_1__ svn_branch__compat_update_editor3_t ;
struct TYPE_7__ {int baton; int target_revision_func; } ;
typedef TYPE_2__ svn_branch__compat_shim_connector_t ;
typedef int svn_branch__compat_fetch_func_t ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 TYPE_1__* apr_pcalloc (int *,int) ;
 int do_unlock ;
 int svn_branch__compat_txn_from_delta_for_commit (int *,TYPE_2__**,int const*,void*,int *,char const*,int ,void*,int ,void*,int *,int *) ;

svn_error_t *
svn_branch__compat_txn_from_delta_for_update(
                        svn_branch__compat_update_editor3_t **update_editor_p,
                        const svn_delta_editor_t *deditor,
                        void *dedit_baton,
                        svn_branch__txn_t *branching_txn,
                        const char *repos_root_url,
                        const char *base_repos_relpath,
                        svn_branch__compat_fetch_func_t fetch_func,
                        void *fetch_baton,
                        svn_cancel_func_t cancel_func,
                        void *cancel_baton,
                        apr_pool_t *result_pool,
                        apr_pool_t *scratch_pool)
{
  svn_branch__compat_update_editor3_t *update_editor
    = apr_pcalloc(result_pool, sizeof(*update_editor));
  svn_branch__compat_shim_connector_t *shim_connector;







  SVN_ERR(svn_branch__compat_txn_from_delta_for_commit(
                        &update_editor->edit_txn,
                        &shim_connector,
                        deditor, dedit_baton,
                        branching_txn, repos_root_url,
                        fetch_func, fetch_baton,
                        cancel_func, cancel_baton,
                        result_pool, scratch_pool));

  update_editor->set_target_revision_func = shim_connector->target_revision_func;
  update_editor->set_target_revision_baton = shim_connector->baton;
  *update_editor_p = update_editor;
  return SVN_NO_ERROR;
}
