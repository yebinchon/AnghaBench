
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int wc_id; int sdb; } ;
typedef TYPE_1__ svn_wc__db_wcroot_t ;
typedef int svn_wc__db_t ;
typedef int svn_sqlite__stmt_t ;
typedef int svn_node_kind_t ;
typedef int svn_error_t ;
typedef scalar_t__ svn_boolean_t ;
typedef int apr_pool_t ;


 int STMT_CREATE_UPDATE_MOVE_LIST ;
 int STMT_SELECT_MOVED_DESCENDANTS_SRC ;
 int SVN_ERR (int ) ;
 int kind_map ;
 int * svn_error_compose_create (int *,int ) ;
 int * svn_error_trace (int ) ;
 int svn_pool_clear (int *) ;
 int * svn_pool_create (int *) ;
 int svn_pool_destroy (int *) ;
 int svn_sqlite__bindf (int *,char*,int ,char const*,int) ;
 int svn_sqlite__column_int (int *,int ) ;
 char* svn_sqlite__column_text (int *,int,int *) ;
 int svn_sqlite__column_token (int *,int,int ) ;
 int svn_sqlite__exec_statements (int ,int ) ;
 int svn_sqlite__get_statement (int **,int ,int ) ;
 int svn_sqlite__reset (int *) ;
 int svn_sqlite__step (scalar_t__*,int *) ;
 int svn_wc__db_op_break_move_internal (TYPE_1__*,char const*,int,char const*,int *,int *) ;
 int svn_wc_notify_move_broken ;
 int svn_wc_notify_state_inapplicable ;
 int update_move_list_add (TYPE_1__*,char const*,int *,int ,int ,int ,int ,int *,int *,int *) ;
 int * verify_write_lock (TYPE_1__*,char const*,int *) ;

__attribute__((used)) static svn_error_t *
break_moved_away(svn_wc__db_wcroot_t *wcroot,
                 svn_wc__db_t *db,
                 const char *local_relpath,
                 int parent_src_op_depth,
                 apr_pool_t *scratch_pool)
{
  svn_sqlite__stmt_t *stmt;
  svn_boolean_t have_row;
  apr_pool_t *iterpool;
  svn_error_t *err = ((void*)0);

  SVN_ERR(svn_sqlite__exec_statements(wcroot->sdb,
                                      STMT_CREATE_UPDATE_MOVE_LIST));

  SVN_ERR(svn_sqlite__get_statement(&stmt, wcroot->sdb,
                                    STMT_SELECT_MOVED_DESCENDANTS_SRC));
  SVN_ERR(svn_sqlite__bindf(stmt, "isd", wcroot->wc_id, local_relpath,
                            parent_src_op_depth));
  SVN_ERR(svn_sqlite__step(&have_row, stmt));

  iterpool = svn_pool_create(scratch_pool);
  while (have_row)
    {
      int src_op_depth = svn_sqlite__column_int(stmt, 0);
      const char *src_relpath = svn_sqlite__column_text(stmt, 1, ((void*)0));
      svn_node_kind_t src_kind = svn_sqlite__column_token(stmt, 2, kind_map);
      const char *dst_relpath = svn_sqlite__column_text(stmt, 4, ((void*)0));

      svn_pool_clear(iterpool);

      err = verify_write_lock(wcroot, src_relpath, iterpool);

      if (!err)
        err = verify_write_lock(wcroot, dst_relpath, iterpool);

      if (err)
        break;

      err = svn_error_trace(
              svn_wc__db_op_break_move_internal(wcroot,
                                                src_relpath, src_op_depth,
                                                dst_relpath, ((void*)0), iterpool));

      if (err)
        break;

      err = svn_error_trace(
              update_move_list_add(wcroot, src_relpath, db,
                                   svn_wc_notify_move_broken,
                                   src_kind,
                                   svn_wc_notify_state_inapplicable,
                                   svn_wc_notify_state_inapplicable,
                                   ((void*)0), ((void*)0), scratch_pool));

      if (err)
        break;

      SVN_ERR(svn_sqlite__step(&have_row, stmt));
    }
  svn_pool_destroy(iterpool);

  return svn_error_compose_create(err, svn_sqlite__reset(stmt));
}
