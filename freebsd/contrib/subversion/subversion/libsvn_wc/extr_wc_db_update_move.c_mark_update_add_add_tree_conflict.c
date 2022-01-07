
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int node_kind; int path_in_repos; int peg_rev; } ;
typedef TYPE_2__ svn_wc_conflict_version_t ;
typedef int svn_wc_conflict_reason_t ;
typedef int svn_wc__db_wcroot_t ;
typedef int svn_wc__db_t ;
typedef int svn_skel_t ;
typedef int svn_node_kind_t ;
typedef int svn_error_t ;
typedef int apr_pool_t ;
struct TYPE_9__ {int local_relpath; TYPE_1__* b; } ;
typedef TYPE_3__ added_node_baton_t ;
struct TYPE_7__ {int new_version; int * wcroot; int * db; } ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int create_tree_conflict (int **,int *,int ,int ,int *,int *,TYPE_2__*,int ,int ,int ,int *,int ,int ,int *,int *,int *) ;
 int svn_node_none ;
 int svn_wc__db_base_get_info_internal (int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int ,int *,int *) ;
 int svn_wc_conflict_action_add ;
 TYPE_2__* svn_wc_conflict_version_dup (int ,int *) ;
 int svn_wc_notify_state_inapplicable ;
 int svn_wc_notify_tree_conflict ;
 int svn_wc_operation_update ;
 int update_move_list_add (int *,int ,int *,int ,int ,int ,int ,int *,int *,int *) ;

__attribute__((used)) static svn_error_t *
mark_update_add_add_tree_conflict(added_node_baton_t *nb,
                                  svn_node_kind_t base_kind,
                                  svn_node_kind_t working_kind,
                                  svn_wc_conflict_reason_t local_change,
                                  apr_pool_t *result_pool,
                                  apr_pool_t *scratch_pool)

{
  svn_wc__db_t *db = nb->b->db;
  svn_wc__db_wcroot_t *wcroot = nb->b->wcroot;
  svn_wc_conflict_version_t *new_version;
  svn_skel_t *conflict;

  new_version = svn_wc_conflict_version_dup(nb->b->new_version, result_pool);


  SVN_ERR(svn_wc__db_base_get_info_internal(((void*)0), ((void*)0), &new_version->peg_rev,
                                            &new_version->path_in_repos,
                                            ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0),
                                            ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0),
                                            wcroot, nb->local_relpath,
                                            scratch_pool, scratch_pool));
  new_version->node_kind = base_kind;

  SVN_ERR(create_tree_conflict(&conflict, wcroot, nb->local_relpath,
                               nb->local_relpath, db, ((void*)0), new_version,
                               svn_wc_operation_update,
                               svn_node_none, base_kind, ((void*)0),
                               local_change, svn_wc_conflict_action_add,
                               ((void*)0), scratch_pool, scratch_pool));

  SVN_ERR(update_move_list_add(wcroot, nb->local_relpath, db,
                               svn_wc_notify_tree_conflict, working_kind,
                               svn_wc_notify_state_inapplicable,
                               svn_wc_notify_state_inapplicable,
                               conflict, ((void*)0), scratch_pool));
  return SVN_NO_ERROR;
}
