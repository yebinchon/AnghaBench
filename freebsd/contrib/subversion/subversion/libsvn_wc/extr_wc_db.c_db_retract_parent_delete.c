
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


 int STMT_CLEAR_MOVED_HERE_RECURSIVE ;
 int STMT_CLEAR_MOVED_TO_RELPATH ;
 int STMT_DELETE_NODE ;
 int STMT_SELECT_LOWEST_WORKING_NODE ;
 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int presence_map ;
 int relpath_depth (char const*) ;
 int * svn_error_trace (int ) ;
 int svn_sqlite__bindf (int *,char*,int ,char const*,int) ;
 int svn_sqlite__column_int (int *,int ) ;
 char* svn_sqlite__column_text (int *,int,int *) ;
 scalar_t__ svn_sqlite__column_token (int *,int,int ) ;
 int svn_sqlite__get_statement (int **,int ,int ) ;
 int svn_sqlite__reset (int *) ;
 int svn_sqlite__step (int *,int *) ;
 int svn_sqlite__step_done (int *) ;
 int svn_sqlite__update (int *,int *) ;
 scalar_t__ svn_wc__db_status_base_deleted ;

__attribute__((used)) static svn_error_t *
db_retract_parent_delete(svn_wc__db_wcroot_t *wcroot,
                         const char *local_relpath,
                         int op_depth,
                         apr_pool_t *scratch_pool)
{
  svn_sqlite__stmt_t *stmt;
  svn_boolean_t have_row;
  int working_depth;
  svn_wc__db_status_t presence;
  const char *moved_to;

  SVN_ERR(svn_sqlite__get_statement(&stmt, wcroot->sdb,
                                    STMT_SELECT_LOWEST_WORKING_NODE));
  SVN_ERR(svn_sqlite__bindf(stmt, "isd", wcroot->wc_id, local_relpath,
                            op_depth));
  SVN_ERR(svn_sqlite__step(&have_row, stmt));

  if (!have_row)
    return svn_error_trace(svn_sqlite__reset(stmt));

  working_depth = svn_sqlite__column_int(stmt, 0);
  presence = svn_sqlite__column_token(stmt, 1, presence_map);
  moved_to = svn_sqlite__column_text(stmt, 3, scratch_pool);

  SVN_ERR(svn_sqlite__reset(stmt));

  if (moved_to)
    {

      SVN_ERR(svn_sqlite__get_statement(&stmt, wcroot->sdb,
                                        STMT_CLEAR_MOVED_HERE_RECURSIVE));
      SVN_ERR(svn_sqlite__bindf(stmt, "isd", wcroot->wc_id,
                                moved_to, relpath_depth(moved_to)));
      SVN_ERR(svn_sqlite__step_done(stmt));



    }

  if (presence == svn_wc__db_status_base_deleted)
    {

      SVN_ERR(svn_sqlite__get_statement(&stmt, wcroot->sdb, STMT_DELETE_NODE));
    }
  else if (moved_to)
    {

      SVN_ERR(svn_sqlite__get_statement(&stmt, wcroot->sdb,
                                        STMT_CLEAR_MOVED_TO_RELPATH));
      }
  else
    {

      return SVN_NO_ERROR;
    }

  SVN_ERR(svn_sqlite__bindf(stmt, "isd", wcroot->wc_id, local_relpath,
                            working_depth));

  return svn_error_trace(svn_sqlite__update(((void*)0), stmt));
}
