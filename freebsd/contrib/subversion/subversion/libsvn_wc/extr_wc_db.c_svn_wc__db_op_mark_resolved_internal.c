
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int wc_id; int sdb; int abspath; } ;
typedef TYPE_1__ svn_wc__db_wcroot_t ;
typedef int svn_wc__db_t ;
struct TYPE_7__ {int len; int data; } ;
typedef TYPE_2__ svn_stringbuf_t ;
typedef int svn_sqlite__stmt_t ;
typedef int svn_skel_t ;
typedef int svn_error_t ;
typedef scalar_t__ svn_boolean_t ;
typedef int apr_size_t ;
typedef int apr_pool_t ;


 int STMT_DELETE_ACTUAL_EMPTY ;
 int STMT_SELECT_ACTUAL_NODE ;
 int STMT_SELECT_NODE_INFO ;
 int STMT_UPDATE_ACTUAL_CONFLICT ;
 int SVN_ERR (int ) ;
 int SVN_ERR_WC_PATH_NOT_FOUND ;
 int * SVN_NO_ERROR ;
 int _ (char*) ;
 int add_work_items (int ,int const*,int *) ;
 int path_for_error_message (TYPE_1__*,char const*,int *) ;
 int * svn_error_createf (int ,int *,int ,int ) ;
 int * svn_skel__parse (void const*,int ,int *) ;
 TYPE_2__* svn_skel__unparse (int *,int *) ;
 int svn_sqlite__bind_blob (int *,int,int ,int ) ;
 int svn_sqlite__bindf (int *,char*,int ,char const*) ;
 void* svn_sqlite__column_blob (int *,int,int *,int *) ;
 int svn_sqlite__get_statement (int **,int ,int ) ;
 int svn_sqlite__reset (int *) ;
 int svn_sqlite__step (scalar_t__*,int *) ;
 int svn_sqlite__step_done (int *) ;
 int svn_sqlite__update (int*,int *) ;
 int svn_wc__conflict_skel_resolve (scalar_t__*,int *,int *,int ,scalar_t__,char*,scalar_t__,int *,int *) ;

svn_error_t *
svn_wc__db_op_mark_resolved_internal(svn_wc__db_wcroot_t *wcroot,
                                     const char *local_relpath,
                                     svn_wc__db_t *db,
                                     svn_boolean_t resolved_text,
                                     svn_boolean_t resolved_props,
                                     svn_boolean_t resolved_tree,
                                     const svn_skel_t *work_items,
                                     apr_pool_t *scratch_pool)
{
  svn_sqlite__stmt_t *stmt;
  svn_boolean_t have_row;
  int total_affected_rows = 0;
  svn_boolean_t resolved_all;
  apr_size_t conflict_len;
  const void *conflict_data;
  svn_skel_t *conflicts;


  SVN_ERR(svn_sqlite__get_statement(&stmt, wcroot->sdb,
                                    STMT_SELECT_ACTUAL_NODE));
  SVN_ERR(svn_sqlite__bindf(stmt, "is", wcroot->wc_id, local_relpath));

  SVN_ERR(svn_sqlite__step(&have_row, stmt));

  if (! have_row)
    {
      SVN_ERR(svn_sqlite__reset(stmt));

      SVN_ERR(svn_sqlite__get_statement(&stmt, wcroot->sdb,
                                        STMT_SELECT_NODE_INFO));

      SVN_ERR(svn_sqlite__bindf(stmt, "is", wcroot->wc_id, local_relpath));

      SVN_ERR(svn_sqlite__step(&have_row, stmt));
      SVN_ERR(svn_sqlite__reset(stmt));

      if (have_row)
        return SVN_NO_ERROR;

      return svn_error_createf(SVN_ERR_WC_PATH_NOT_FOUND, ((void*)0),
                               _("The node '%s' was not found."),
                                   path_for_error_message(wcroot,
                                                          local_relpath,
                                                          scratch_pool));
    }

  conflict_data = svn_sqlite__column_blob(stmt, 2, &conflict_len,
                                          scratch_pool);
  SVN_ERR(svn_sqlite__reset(stmt));
  SVN_ERR(add_work_items(wcroot->sdb, work_items, scratch_pool));

  if (!conflict_data)
    return SVN_NO_ERROR;

  conflicts = svn_skel__parse(conflict_data, conflict_len, scratch_pool);


  SVN_ERR(svn_wc__conflict_skel_resolve(&resolved_all, conflicts,
                                        db, wcroot->abspath,
                                        resolved_text,
                                        resolved_props ? "" : ((void*)0),
                                        resolved_tree,
                                        scratch_pool, scratch_pool));

  SVN_ERR(svn_sqlite__get_statement(&stmt, wcroot->sdb,
                                    STMT_UPDATE_ACTUAL_CONFLICT));
  SVN_ERR(svn_sqlite__bindf(stmt, "is", wcroot->wc_id, local_relpath));

  if (! resolved_all)
    {
      svn_stringbuf_t *sb = svn_skel__unparse(conflicts, scratch_pool);

      SVN_ERR(svn_sqlite__bind_blob(stmt, 3, sb->data, sb->len));
    }

  SVN_ERR(svn_sqlite__update(&total_affected_rows, stmt));



  if (total_affected_rows > 0)
    {
      SVN_ERR(svn_sqlite__get_statement(&stmt, wcroot->sdb,
                                        STMT_DELETE_ACTUAL_EMPTY));
      SVN_ERR(svn_sqlite__bindf(stmt, "is", wcroot->wc_id, local_relpath));
      SVN_ERR(svn_sqlite__step_done(stmt));
    }

  return SVN_NO_ERROR;
}
