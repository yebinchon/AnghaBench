
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int wc_id; int sdb; } ;
typedef TYPE_1__ svn_wc__db_wcroot_t ;
typedef int svn_sqlite__stmt_t ;
typedef int svn_error_t ;
typedef scalar_t__ svn_boolean_t ;
struct revert_baton_t {scalar_t__ clear_changelists; } ;
typedef int apr_pool_t ;


 int STMT_CLEAR_ACTUAL_NODE_LEAVING_CHANGELIST_RECURSIVE ;
 int STMT_DELETE_ACTUAL_NODE ;
 int STMT_DELETE_ACTUAL_NODE_LEAVING_CHANGELIST_RECURSIVE ;
 int STMT_DELETE_ACTUAL_NODE_RECURSIVE ;
 int STMT_DELETE_NODES_ABOVE_DEPTH_RECURSIVE ;
 int STMT_DELETE_WC_LOCK_ORPHAN_RECURSIVE ;
 int STMT_SELECT_MOVED_HERE_CHILDREN ;
 int STMT_SELECT_MOVED_OUTSIDE ;
 int STMT_SELECT_NODE_INFO ;
 int SVN_ERR (int *) ;
 int SVN_ERR_WC_INVALID_OPERATION_DEPTH ;
 int SVN_ERR_WC_PATH_NOT_FOUND ;
 int * SVN_NO_ERROR ;
 int _ (char*) ;
 int * clear_moved_to (TYPE_1__*,char const*,int *) ;
 int path_for_error_message (TYPE_1__*,char const*,int *) ;
 int relpath_depth (char const*) ;
 int * svn_error_compose_create (int *,int *) ;
 int * svn_error_createf (int ,int *,int ,int ) ;
 int * svn_error_trace (int *) ;
 int svn_pool_clear (int *) ;
 int * svn_pool_create (int *) ;
 int svn_pool_destroy (int *) ;
 int * svn_sqlite__bindf (int *,char*,int ,char const*,...) ;
 scalar_t__ svn_sqlite__column_boolean (int *,int) ;
 int svn_sqlite__column_int (int *,int) ;
 char* svn_sqlite__column_text (int *,int,int *) ;
 int * svn_sqlite__get_statement (int **,int ,int ) ;
 int * svn_sqlite__reset (int *) ;
 int * svn_sqlite__step (scalar_t__*,int *) ;
 int * svn_sqlite__step_done (int *) ;
 int * svn_sqlite__update (int*,int *) ;
 int * svn_wc__db_op_break_move_internal (TYPE_1__*,char const*,int,char const*,int *,int *) ;

__attribute__((used)) static svn_error_t *
op_revert_recursive_txn(void *baton,
                        svn_wc__db_wcroot_t *wcroot,
                        const char *local_relpath,
                        apr_pool_t *scratch_pool)
{
  struct revert_baton_t *rvb = baton;
  svn_sqlite__stmt_t *stmt;
  svn_boolean_t have_row;
  int op_depth;
  int select_op_depth;
  svn_boolean_t moved_here;
  int affected_rows;
  apr_pool_t *iterpool;




  SVN_ERR(svn_sqlite__get_statement(&stmt, wcroot->sdb,
                                    STMT_SELECT_NODE_INFO));
  SVN_ERR(svn_sqlite__bindf(stmt, "is", wcroot->wc_id, local_relpath));
  SVN_ERR(svn_sqlite__step(&have_row, stmt));
  if (!have_row)
    {
      SVN_ERR(svn_sqlite__reset(stmt));

      SVN_ERR(svn_sqlite__get_statement(&stmt, wcroot->sdb,
                                        STMT_DELETE_ACTUAL_NODE));
      SVN_ERR(svn_sqlite__bindf(stmt, "is", wcroot->wc_id,
                                local_relpath));
      SVN_ERR(svn_sqlite__update(&affected_rows, stmt));

      if (affected_rows)
        return SVN_NO_ERROR;

      return svn_error_createf(SVN_ERR_WC_PATH_NOT_FOUND, ((void*)0),
                               _("The node '%s' was not found."),
                               path_for_error_message(wcroot,
                                                      local_relpath,
                                                      scratch_pool));
    }

  op_depth = svn_sqlite__column_int(stmt, 0);
  moved_here = svn_sqlite__column_boolean(stmt, 15);
  SVN_ERR(svn_sqlite__reset(stmt));

  if (op_depth > 0 && op_depth != relpath_depth(local_relpath))
    return svn_error_createf(SVN_ERR_WC_INVALID_OPERATION_DEPTH, ((void*)0),
                             _("Can't revert '%s' without"
                               " reverting parent"),
                             path_for_error_message(wcroot,
                                                    local_relpath,
                                                    scratch_pool));


  SVN_ERR(svn_sqlite__get_statement(
                    &stmt, wcroot->sdb, STMT_SELECT_MOVED_OUTSIDE));
  SVN_ERR(svn_sqlite__bindf(stmt, "isd", wcroot->wc_id, local_relpath,
                            op_depth));
  SVN_ERR(svn_sqlite__step(&have_row, stmt));
  while (have_row)
    {
      const char *src_relpath = svn_sqlite__column_text(stmt, 0, ((void*)0));
      const char *dst_relpath = svn_sqlite__column_text(stmt, 1, ((void*)0));
      int move_op_depth = svn_sqlite__column_int(stmt, 2);
      svn_error_t *err;

      err = svn_wc__db_op_break_move_internal(wcroot,
                                              src_relpath, move_op_depth,
                                              dst_relpath, ((void*)0), scratch_pool);
      if (err)
        return svn_error_compose_create(err, svn_sqlite__reset(stmt));

      SVN_ERR(svn_sqlite__step(&have_row, stmt));
    }
  SVN_ERR(svn_sqlite__reset(stmt));


  select_op_depth = op_depth ? op_depth : 1;


  SVN_ERR(svn_sqlite__get_statement(
                    &stmt, wcroot->sdb,
                    STMT_DELETE_NODES_ABOVE_DEPTH_RECURSIVE));
  SVN_ERR(svn_sqlite__bindf(stmt, "isd", wcroot->wc_id,
                            local_relpath, select_op_depth));
  SVN_ERR(svn_sqlite__step_done(stmt));

  if (rvb->clear_changelists)
    {
      SVN_ERR(svn_sqlite__get_statement(
                        &stmt, wcroot->sdb,
                        STMT_DELETE_ACTUAL_NODE_RECURSIVE));
      SVN_ERR(svn_sqlite__bindf(stmt, "is", wcroot->wc_id, local_relpath));
      SVN_ERR(svn_sqlite__step_done(stmt));
    }
  else
    {
      SVN_ERR(svn_sqlite__get_statement(
                        &stmt, wcroot->sdb,
                        STMT_DELETE_ACTUAL_NODE_LEAVING_CHANGELIST_RECURSIVE));
      SVN_ERR(svn_sqlite__bindf(stmt, "is", wcroot->wc_id, local_relpath));
      SVN_ERR(svn_sqlite__step_done(stmt));

      SVN_ERR(svn_sqlite__get_statement(
                        &stmt, wcroot->sdb,
                        STMT_CLEAR_ACTUAL_NODE_LEAVING_CHANGELIST_RECURSIVE));
      SVN_ERR(svn_sqlite__bindf(stmt, "is", wcroot->wc_id, local_relpath));
      SVN_ERR(svn_sqlite__step_done(stmt));
    }


  SVN_ERR(svn_sqlite__get_statement(&stmt, wcroot->sdb,
                                    STMT_DELETE_WC_LOCK_ORPHAN_RECURSIVE));
  SVN_ERR(svn_sqlite__bindf(stmt, "is", wcroot->wc_id,
                            local_relpath));
  SVN_ERR(svn_sqlite__step_done(stmt));

  SVN_ERR(svn_sqlite__get_statement(&stmt, wcroot->sdb,
                                    STMT_SELECT_MOVED_HERE_CHILDREN));
  SVN_ERR(svn_sqlite__bindf(stmt, "is", wcroot->wc_id, local_relpath));

  SVN_ERR(svn_sqlite__step(&have_row, stmt));

  iterpool = svn_pool_create(scratch_pool);
  while (have_row)
    {
      const char *moved_here_child_relpath;
      svn_error_t *err;

      svn_pool_clear(iterpool);

      moved_here_child_relpath = svn_sqlite__column_text(stmt, 0, iterpool);
      err = clear_moved_to(wcroot, moved_here_child_relpath, iterpool);
      if (err)
        return svn_error_trace(svn_error_compose_create(
                                        err,
                                        svn_sqlite__reset(stmt)));

      SVN_ERR(svn_sqlite__step(&have_row, stmt));
    }
  SVN_ERR(svn_sqlite__reset(stmt));
  svn_pool_destroy(iterpool);


  if (op_depth > 0 && op_depth == relpath_depth(local_relpath)
      && moved_here)
    SVN_ERR(clear_moved_to(wcroot, local_relpath, scratch_pool));

  return SVN_NO_ERROR;
}
