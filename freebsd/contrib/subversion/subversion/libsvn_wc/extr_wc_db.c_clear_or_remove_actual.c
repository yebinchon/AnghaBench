
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int wc_id; int sdb; } ;
typedef TYPE_1__ svn_wc__db_wcroot_t ;
typedef scalar_t__ svn_wc__db_status_t ;
typedef int svn_sqlite__stmt_t ;
typedef int svn_error_t ;
typedef int svn_boolean_t ;
typedef int apr_pool_t ;


 int FALSE ;
 int STMT_CLEAR_ACTUAL_NODE_LEAVING_CONFLICT ;
 int STMT_DELETE_ACTUAL_EMPTY ;
 int STMT_DELETE_ACTUAL_NODE ;
 int STMT_SELECT_NODE_INFO ;
 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int TRUE ;
 int presence_map ;
 int svn_sqlite__bindf (int *,char*,int ,char const*) ;
 int svn_sqlite__column_int (int *,int ) ;
 scalar_t__ svn_sqlite__column_token (int *,int,int ) ;
 int svn_sqlite__get_statement (int **,int ,int ) ;
 int svn_sqlite__reset (int *) ;
 int svn_sqlite__step (int*,int *) ;
 int svn_sqlite__step_done (int *) ;
 scalar_t__ svn_wc__db_status_base_deleted ;

__attribute__((used)) static svn_error_t *
clear_or_remove_actual(svn_wc__db_wcroot_t *wcroot,
                       const char *local_relpath,
                       int op_depth,
                       apr_pool_t *scratch_pool)
{
  svn_sqlite__stmt_t *stmt;
  svn_boolean_t have_row, shadowed;
  svn_boolean_t keep_conflict = FALSE;

  SVN_ERR(svn_sqlite__get_statement(&stmt, wcroot->sdb,
                                    STMT_SELECT_NODE_INFO));

  SVN_ERR(svn_sqlite__bindf(stmt, "is", wcroot->wc_id, local_relpath));
  SVN_ERR(svn_sqlite__step(&have_row, stmt));

  if (have_row)
    {
      svn_wc__db_status_t presence;

      shadowed = (svn_sqlite__column_int(stmt, 0) > op_depth);
      presence = svn_sqlite__column_token(stmt, 3, presence_map);

      if (shadowed && presence == svn_wc__db_status_base_deleted)
        {
          keep_conflict = TRUE;
          SVN_ERR(svn_sqlite__step(&have_row, stmt));

          if (have_row)
            shadowed = (svn_sqlite__column_int(stmt, 0) > op_depth);
          else
            shadowed = FALSE;
        }
    }
  else
    shadowed = FALSE;

  SVN_ERR(svn_sqlite__reset(stmt));
  if (shadowed)
    return SVN_NO_ERROR;

  if (keep_conflict)
    {

      SVN_ERR(svn_sqlite__get_statement(
                          &stmt, wcroot->sdb,
                          STMT_CLEAR_ACTUAL_NODE_LEAVING_CONFLICT));
      SVN_ERR(svn_sqlite__bindf(stmt, "is", wcroot->wc_id, local_relpath));
      SVN_ERR(svn_sqlite__step_done(stmt));
      SVN_ERR(svn_sqlite__get_statement(&stmt, wcroot->sdb,
                                        STMT_DELETE_ACTUAL_EMPTY));
      SVN_ERR(svn_sqlite__bindf(stmt, "is", wcroot->wc_id, local_relpath));
      SVN_ERR(svn_sqlite__step_done(stmt));
    }
  else
    {
      SVN_ERR(svn_sqlite__get_statement(&stmt, wcroot->sdb,
                                        STMT_DELETE_ACTUAL_NODE));
      SVN_ERR(svn_sqlite__bindf(stmt, "is", wcroot->wc_id, local_relpath));
      SVN_ERR(svn_sqlite__step_done(stmt));
    }

  return SVN_NO_ERROR;
}
