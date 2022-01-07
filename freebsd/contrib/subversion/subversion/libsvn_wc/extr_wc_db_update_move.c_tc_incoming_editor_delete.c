
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {TYPE_3__* wcroot; int db; } ;
typedef TYPE_1__ update_move_baton_t ;
typedef int svn_wc_conflict_reason_t ;
typedef int svn_sqlite__stmt_t ;
typedef int svn_skel_t ;
typedef int svn_node_kind_t ;
typedef int svn_error_t ;
typedef scalar_t__ svn_boolean_t ;
struct TYPE_11__ {scalar_t__ skip; TYPE_1__* umb; scalar_t__ shadowed; } ;
typedef TYPE_2__ node_move_baton_t ;
typedef int apr_pool_t ;
struct TYPE_12__ {int wc_id; int sdb; int abspath; } ;


 int FALSE ;
 int STMT_INSERT_DELETE_FROM_NODE_RECURSIVE ;
 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 scalar_t__ TRUE ;
 int create_node_tree_conflict (int **,TYPE_2__*,char const*,int ,int ,int ,int ,int *,int *,int *) ;
 int mark_parent_edited (TYPE_2__*,int *) ;
 int mark_tc_on_op_root (TYPE_2__*,int ,int ,int ,int *) ;
 int relpath_depth (char const*) ;
 char* svn_dirent_join (int ,char const*,int *) ;
 int svn_node_none ;
 int svn_sqlite__bindf (int *,char*,int ,char const*,int ,int ) ;
 int svn_sqlite__get_statement (int **,int ,int ) ;
 int svn_sqlite__step_done (int *) ;
 int svn_wc__db_op_make_copy_internal (TYPE_3__*,char const*,int ,int *,int *,int *) ;
 int svn_wc__db_wq_add_internal (TYPE_3__*,int *,int *) ;
 int svn_wc__node_has_local_mods (scalar_t__*,scalar_t__*,int ,char const*,int ,int *,int *,int *) ;
 int svn_wc_conflict_action_delete ;
 int svn_wc_conflict_action_replace ;
 int svn_wc_conflict_reason_edited ;
 int svn_wc_notify_state_inapplicable ;
 int svn_wc_notify_update_delete ;
 int update_move_list_add (TYPE_3__*,char const*,int ,int ,int ,int ,int ,int *,int *,int *) ;

__attribute__((used)) static svn_error_t *
tc_incoming_editor_delete(node_move_baton_t *nmb,
                          const char *relpath,
                          svn_node_kind_t old_kind,
                          svn_node_kind_t new_kind,
                          apr_pool_t *scratch_pool)
{
  update_move_baton_t *b = nmb->umb;
  svn_sqlite__stmt_t *stmt;
  const char *local_abspath;
  svn_boolean_t is_modified, is_all_deletes;
  svn_skel_t *work_items = ((void*)0);
  svn_skel_t *conflict = ((void*)0);

  SVN_ERR(mark_parent_edited(nmb, scratch_pool));
  if (nmb->skip)
    return SVN_NO_ERROR;




  if (nmb->shadowed)
    {
      SVN_ERR(mark_tc_on_op_root(nmb,
                                 old_kind, new_kind,
                                 svn_wc_conflict_action_delete,
                                 scratch_pool));
      return SVN_NO_ERROR;
    }

  local_abspath = svn_dirent_join(b->wcroot->abspath, relpath, scratch_pool);
  SVN_ERR(svn_wc__node_has_local_mods(&is_modified, &is_all_deletes,
                                      nmb->umb->db, local_abspath, FALSE,
                                      ((void*)0), ((void*)0), scratch_pool));
  if (is_modified)
    {
      svn_wc_conflict_reason_t reason;
      SVN_ERR(svn_wc__db_op_make_copy_internal(b->wcroot, relpath, FALSE,
                                               ((void*)0), ((void*)0), scratch_pool));

      reason = svn_wc_conflict_reason_edited;

      SVN_ERR(create_node_tree_conflict(&conflict, nmb, relpath,
                                        old_kind, new_kind, reason,
                                        (new_kind == svn_node_none)
                                          ? svn_wc_conflict_action_delete
                                          : svn_wc_conflict_action_replace,
                                        ((void*)0),
                                        scratch_pool, scratch_pool));
      nmb->skip = TRUE;
    }
  else
    {

      SVN_ERR(svn_sqlite__get_statement(&stmt, b->wcroot->sdb,
                                 STMT_INSERT_DELETE_FROM_NODE_RECURSIVE));
      SVN_ERR(svn_sqlite__bindf(stmt, "isdd",
                                b->wcroot->wc_id, relpath,
                                0, relpath_depth(relpath)));
      SVN_ERR(svn_sqlite__step_done(stmt));
    }


  if (conflict || (new_kind == svn_node_none))
    SVN_ERR(update_move_list_add(b->wcroot, relpath, b->db,
                                 svn_wc_notify_update_delete,
                                 new_kind,
                                 svn_wc_notify_state_inapplicable,
                                 svn_wc_notify_state_inapplicable,
                                 conflict, work_items, scratch_pool));
  else if (work_items)
    SVN_ERR(svn_wc__db_wq_add_internal(b->wcroot, work_items,
                                       scratch_pool));

  return SVN_NO_ERROR;
}
