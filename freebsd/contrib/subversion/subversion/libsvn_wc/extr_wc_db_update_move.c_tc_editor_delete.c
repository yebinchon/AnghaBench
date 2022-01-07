
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {TYPE_3__* wcroot; int db; int dst_op_depth; } ;
typedef TYPE_1__ update_move_baton_t ;
typedef int svn_wc_conflict_reason_t ;
typedef int svn_sqlite__stmt_t ;
typedef int svn_skel_t ;
typedef scalar_t__ svn_node_kind_t ;
typedef int svn_error_t ;
typedef scalar_t__ svn_boolean_t ;
struct TYPE_11__ {scalar_t__ skip; TYPE_1__* umb; scalar_t__ shadowed; } ;
typedef TYPE_2__ node_move_baton_t ;
typedef int apr_pool_t ;
struct TYPE_12__ {int abspath; int wc_id; int sdb; } ;


 int FALSE ;
 int STMT_SELECT_DESCENDANTS_OP_DEPTH_RV ;
 int SVN_ERR (int *) ;
 int * SVN_NO_ERROR ;
 scalar_t__ TRUE ;
 int * create_node_tree_conflict (int **,TYPE_2__*,char const*,scalar_t__,scalar_t__,int ,int ,int *,int *,int *) ;
 int kind_map ;
 int * mark_parent_edited (TYPE_2__*,int *) ;
 int * mark_tc_on_op_root (TYPE_2__*,scalar_t__,scalar_t__,int ,int *) ;
 char* svn_dirent_join (int ,char const*,int *) ;
 int * svn_error_compose_create (int *,int *) ;
 scalar_t__ svn_node_dir ;
 scalar_t__ svn_node_none ;
 int svn_pool_clear (int *) ;
 int * svn_pool_create (int *) ;
 int svn_pool_destroy (int *) ;
 int * svn_sqlite__bindf (int *,char*,int ,char const*,int ) ;
 char const* svn_sqlite__column_text (int *,int ,int *) ;
 scalar_t__ svn_sqlite__column_token (int *,int,int ) ;
 int * svn_sqlite__get_statement (int **,int ,int ) ;
 int * svn_sqlite__reset (int *) ;
 int * svn_sqlite__step (scalar_t__*,int *) ;
 int * svn_wc__db_op_make_copy_internal (TYPE_3__*,char const*,int ,int *,int *,int *) ;
 int * svn_wc__db_wq_add_internal (TYPE_3__*,int *,int *) ;
 int * svn_wc__node_has_local_mods (scalar_t__*,scalar_t__*,int ,char const*,int ,int *,int *,int *) ;
 int * svn_wc__wq_build_dir_remove (int **,int ,int ,char const*,int ,int *,int *) ;
 int * svn_wc__wq_build_file_remove (int **,int ,int ,char const*,int *,int *) ;
 int svn_wc_conflict_action_delete ;
 int svn_wc_conflict_action_replace ;
 int svn_wc_conflict_reason_edited ;
 int svn_wc_notify_state_inapplicable ;
 int svn_wc_notify_update_delete ;
 int * update_move_list_add (TYPE_3__*,char const*,int ,int ,scalar_t__,int ,int ,int *,int *,int *) ;

__attribute__((used)) static svn_error_t *
tc_editor_delete(node_move_baton_t *nmb,
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
      apr_pool_t *iterpool = svn_pool_create(scratch_pool);
      const char *del_abspath;
      svn_boolean_t have_row;



      SVN_ERR(svn_sqlite__get_statement(&stmt, b->wcroot->sdb,
                                        STMT_SELECT_DESCENDANTS_OP_DEPTH_RV));
      SVN_ERR(svn_sqlite__bindf(stmt, "isd", b->wcroot->wc_id, relpath,
                                b->dst_op_depth));
      SVN_ERR(svn_sqlite__step(&have_row, stmt));
      while (have_row)
        {
          svn_error_t *err;
          svn_skel_t *work_item;
          svn_node_kind_t del_kind;

          svn_pool_clear(iterpool);

          del_kind = svn_sqlite__column_token(stmt, 1, kind_map);
          del_abspath = svn_dirent_join(b->wcroot->abspath,
                                        svn_sqlite__column_text(stmt, 0, ((void*)0)),
                                        iterpool);
          if (del_kind == svn_node_dir)
            err = svn_wc__wq_build_dir_remove(&work_item, b->db,
                                              b->wcroot->abspath, del_abspath,
                                              FALSE ,
                                              iterpool, iterpool);
          else
            err = svn_wc__wq_build_file_remove(&work_item, b->db,
                                               b->wcroot->abspath, del_abspath,
                                               iterpool, iterpool);
          if (!err)
            err = svn_wc__db_wq_add_internal(b->wcroot, work_item, iterpool);
          if (err)
            return svn_error_compose_create(err, svn_sqlite__reset(stmt));

          SVN_ERR(svn_sqlite__step(&have_row, stmt));
        }
      SVN_ERR(svn_sqlite__reset(stmt));

      if (old_kind == svn_node_dir)
        SVN_ERR(svn_wc__wq_build_dir_remove(&work_items, b->db,
                                            b->wcroot->abspath, local_abspath,
                                            FALSE ,
                                            scratch_pool, iterpool));
      else
        SVN_ERR(svn_wc__wq_build_file_remove(&work_items, b->db,
                                             b->wcroot->abspath, local_abspath,
                                             scratch_pool, iterpool));

      svn_pool_destroy(iterpool);
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
