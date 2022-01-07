
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int svn_wc_operation_t ;
typedef int svn_wc_conflict_version_t ;
typedef int svn_wc_conflict_action_t ;
struct TYPE_5__ {int wc_id; int sdb; } ;
typedef TYPE_1__ svn_wc__db_wcroot_t ;
typedef int svn_wc__db_t ;
typedef int svn_sqlite__stmt_t ;
typedef int svn_skel_t ;
typedef int svn_node_kind_t ;
typedef int svn_error_t ;
typedef scalar_t__ svn_boolean_t ;
typedef int apr_pool_t ;


 int STMT_CREATE_UPDATE_MOVE_LIST ;
 int STMT_SELECT_MOVED_DESCENDANTS_SRC ;
 int SVN_ERR (int ) ;
 int SVN_ERR_ASSERT (int ) ;
 int * SVN_NO_ERROR ;
 int * create_tree_conflict (int **,TYPE_1__*,char const*,char const*,int *,int const*,int const*,int ,int ,int ,char const*,int ,int ,int ,int *,int *) ;
 int kind_map ;
 int * svn_error_compose_create (int *,int ) ;
 int svn_pool_clear (int *) ;
 int * svn_pool_create (int *) ;
 int svn_pool_destroy (int *) ;
 int svn_relpath_prefix (char const*,int,int *) ;
 int svn_sqlite__bindf (int *,char*,int ,char const*,int) ;
 int svn_sqlite__column_int (int *,int ) ;
 char* svn_sqlite__column_text (int *,int,int *) ;
 int svn_sqlite__column_token (int *,int,int ) ;
 int svn_sqlite__exec_statements (int ,int ) ;
 int svn_sqlite__get_statement (int **,int ,int ) ;
 int svn_sqlite__reset (int *) ;
 int svn_sqlite__step (scalar_t__*,int *) ;
 int svn_wc_conflict_reason_moved_away ;
 int svn_wc_notify_state_inapplicable ;
 int svn_wc_notify_tree_conflict ;
 int * update_move_list_add (TYPE_1__*,char const*,int *,int ,int ,int ,int ,int *,int *,int *) ;

svn_error_t *
svn_wc__db_op_raise_moved_away_internal(
                        svn_wc__db_wcroot_t *wcroot,
                        const char *local_relpath,
                        int src_op_depth,
                        svn_wc__db_t *db,
                        svn_wc_operation_t operation,
                        svn_wc_conflict_action_t action,
                        const svn_wc_conflict_version_t *old_version,
                        const svn_wc_conflict_version_t *new_version,
                        apr_pool_t *scratch_pool)
{
  svn_sqlite__stmt_t *stmt;
  svn_boolean_t have_row;
  apr_pool_t *iterpool = svn_pool_create(scratch_pool);

  SVN_ERR(svn_sqlite__exec_statements(wcroot->sdb,
                                      STMT_CREATE_UPDATE_MOVE_LIST));

  SVN_ERR(svn_sqlite__get_statement(&stmt, wcroot->sdb,
                                    STMT_SELECT_MOVED_DESCENDANTS_SRC));
  SVN_ERR(svn_sqlite__bindf(stmt, "isd", wcroot->wc_id, local_relpath,
                            src_op_depth));
  SVN_ERR(svn_sqlite__step(&have_row, stmt));
  while(have_row)
    {
      svn_error_t *err;
      int delete_op_depth = svn_sqlite__column_int(stmt, 0);
      const char *src_relpath = svn_sqlite__column_text(stmt, 1, ((void*)0));
      svn_node_kind_t src_kind = svn_sqlite__column_token(stmt, 2, kind_map);
      const char *src_repos_relpath = svn_sqlite__column_text(stmt, 3, ((void*)0));
      const char *dst_relpath = svn_sqlite__column_text(stmt, 4, ((void*)0));
      svn_skel_t *conflict;
      svn_pool_clear(iterpool);

      SVN_ERR_ASSERT(src_repos_relpath != ((void*)0));

      err = create_tree_conflict(&conflict, wcroot, src_relpath, dst_relpath,
                                 db, old_version, new_version, operation,
                                 src_kind ,
                                 src_kind ,
                                 src_repos_relpath,
                                 svn_wc_conflict_reason_moved_away,
                                 action,
                                 svn_relpath_prefix(src_relpath,
                                                    delete_op_depth,
                                                    iterpool),
                                 iterpool, iterpool);

      if (!err)
        err = update_move_list_add(wcroot, src_relpath, db,
                                   svn_wc_notify_tree_conflict,
                                   src_kind,
                                   svn_wc_notify_state_inapplicable,
                                   svn_wc_notify_state_inapplicable,
                                   conflict, ((void*)0), scratch_pool);

      if (err)
        return svn_error_compose_create(err, svn_sqlite__reset(stmt));

      SVN_ERR(svn_sqlite__step(&have_row, stmt));
    }
  SVN_ERR(svn_sqlite__reset(stmt));

  svn_pool_destroy(iterpool);

  return SVN_NO_ERROR;
}
