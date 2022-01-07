
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int sdb; int wc_id; } ;
typedef TYPE_1__ svn_wc__db_wcroot_t ;
typedef int svn_sqlite__stmt_t ;
typedef int svn_skel_t ;
typedef int svn_error_t ;
typedef scalar_t__ svn_boolean_t ;
typedef int apr_pool_t ;


 int FALSE ;
 int INVALID_REPOS_ID ;
 int STMT_COPY_OP_DEPTH_RECURSIVE ;
 int STMT_INSERT_DELETE_FROM_NODE_RECURSIVE ;
 int STMT_SELECT_WORKING_NODE ;
 int SVN_ERR (int ) ;
 int SVN_ERR_ASSERT (int) ;
 int SVN_ERR_WC_PATH_UNEXPECTED_STATUS ;
 int SVN_INVALID_REVNUM ;
 int * SVN_NO_ERROR ;
 int _ (char*) ;
 int add_work_items (int ,int const*,int *) ;
 int catch_copy_of_server_excluded (TYPE_1__*,char const*,int *) ;
 int db_move_moved_to_down_recursive (TYPE_1__*,char const*,int,int *) ;
 int make_copy_txn (TYPE_1__*,char const*,int ,int *,int ,int,int ,int,int *) ;
 int path_for_error_message (TYPE_1__*,char const*,int *) ;
 int relpath_depth (char const*) ;
 int * svn_error_createf (int ,int *,int ,int ) ;
 int svn_sqlite__bindf (int *,char*,int ,char const*,...) ;
 int svn_sqlite__column_int (int *,int ) ;
 int svn_sqlite__get_statement (int **,int ,int ) ;
 int svn_sqlite__reset (int *) ;
 int svn_sqlite__step (scalar_t__*,int *) ;
 int svn_sqlite__step_done (int *) ;
 int svn_sqlite__update (int*,int *) ;
 int svn_wc__db_mark_conflict_internal (TYPE_1__*,char const*,int const*,int *) ;

svn_error_t *
svn_wc__db_op_make_copy_internal(svn_wc__db_wcroot_t *wcroot,
                                 const char *local_relpath,
                                 svn_boolean_t move_move_info,
                                 const svn_skel_t *conflicts,
                                 const svn_skel_t *work_items,
                                 apr_pool_t *scratch_pool)
{
  svn_sqlite__stmt_t *stmt;
  svn_boolean_t have_row;
  int op_depth = -1;



  SVN_ERR(svn_sqlite__get_statement(&stmt, wcroot->sdb,
                                    STMT_SELECT_WORKING_NODE));
  SVN_ERR(svn_sqlite__bindf(stmt, "is", wcroot->wc_id, local_relpath));
  SVN_ERR(svn_sqlite__step(&have_row, stmt));
  if (have_row)
    op_depth = svn_sqlite__column_int(stmt, 0);
  SVN_ERR(svn_sqlite__reset(stmt));

  if (have_row)
    {
      if (op_depth == relpath_depth(local_relpath))
        return svn_error_createf(SVN_ERR_WC_PATH_UNEXPECTED_STATUS, ((void*)0),
                             _("Modification of '%s' already exists"),
                             path_for_error_message(wcroot,
                                                    local_relpath,
                                                    scratch_pool));




      SVN_ERR(svn_sqlite__get_statement(&stmt, wcroot->sdb,
                                        STMT_COPY_OP_DEPTH_RECURSIVE));
      SVN_ERR(svn_sqlite__bindf(stmt, "isdd", wcroot->wc_id, local_relpath,
                                op_depth, relpath_depth(local_relpath)));
      SVN_ERR(svn_sqlite__step_done(stmt));
    }
  else
    {
      int affected_rows;

      op_depth = relpath_depth(local_relpath);


      SVN_ERR(catch_copy_of_server_excluded(wcroot, local_relpath,
                                            scratch_pool));


      SVN_ERR(svn_sqlite__get_statement(
                        &stmt, wcroot->sdb,
                        STMT_INSERT_DELETE_FROM_NODE_RECURSIVE));



      SVN_ERR(svn_sqlite__bindf(stmt, "isdd",
                                wcroot->wc_id, local_relpath,
                                0, op_depth));
      SVN_ERR(svn_sqlite__update(&affected_rows, stmt));
      SVN_ERR_ASSERT(affected_rows > 0);

      if (!move_move_info)
        SVN_ERR(db_move_moved_to_down_recursive(wcroot, local_relpath,
                                                op_depth, scratch_pool));


      SVN_ERR(make_copy_txn(wcroot, local_relpath,
                            INVALID_REPOS_ID, ((void*)0), SVN_INVALID_REVNUM,
                            op_depth, FALSE, op_depth,
                            scratch_pool));
    }

  if (conflicts)
    SVN_ERR(svn_wc__db_mark_conflict_internal(wcroot, local_relpath,
                                              conflicts, scratch_pool));

  SVN_ERR(add_work_items(wcroot->sdb, work_items, scratch_pool));

  return SVN_NO_ERROR;
}
