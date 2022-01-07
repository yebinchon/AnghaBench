
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int wc_id; int sdb; } ;
typedef TYPE_1__ svn_wc__db_wcroot_t ;
typedef int svn_sqlite__stmt_t ;
typedef int svn_error_t ;
typedef int apr_pool_t ;


 int STMT_CLEAR_MOVED_TO_RELPATH ;
 int STMT_SELECT_MOVED_FROM_RELPATH ;
 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int svn_sqlite__bindf (int *,char*,int ,char const*,...) ;
 int svn_sqlite__column_int (int *,int) ;
 char* svn_sqlite__column_text (int *,int ,int *) ;
 int svn_sqlite__get_statement (int **,int ,int ) ;
 int svn_sqlite__reset (int *) ;
 int svn_sqlite__step_row (int *) ;
 int svn_sqlite__update (int *,int *) ;

__attribute__((used)) static svn_error_t *
clear_moved_to(svn_wc__db_wcroot_t *wcroot,
               const char *moved_to_relpath,
               apr_pool_t *scratch_pool)
{
  svn_sqlite__stmt_t *stmt;
  const char *moved_from_relpath;
  int moved_from_op_depth;

  SVN_ERR(svn_sqlite__get_statement(&stmt, wcroot->sdb,
                                    STMT_SELECT_MOVED_FROM_RELPATH));
  SVN_ERR(svn_sqlite__bindf(stmt, "is", wcroot->wc_id, moved_to_relpath));
  SVN_ERR(svn_sqlite__step_row(stmt));

  moved_from_relpath = svn_sqlite__column_text(stmt, 0, scratch_pool);
  moved_from_op_depth = svn_sqlite__column_int(stmt, 1);
  SVN_ERR(svn_sqlite__reset(stmt));

  SVN_ERR(svn_sqlite__get_statement(&stmt, wcroot->sdb,
                                    STMT_CLEAR_MOVED_TO_RELPATH));
  SVN_ERR(svn_sqlite__bindf(stmt, "isd", wcroot->wc_id,
                            moved_from_relpath, moved_from_op_depth));
  SVN_ERR(svn_sqlite__update(((void*)0), stmt));

  return SVN_NO_ERROR;
}
