
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_sqlite__stmt_t ;
typedef int svn_sqlite__db_t ;
typedef int svn_error_t ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int prepare_statement (int **,int *,char*,int *) ;
 int * svn_error_trace (int ) ;
 int svn_sqlite__column_int (int *,int ) ;
 int svn_sqlite__finalize (int *) ;
 int svn_sqlite__step_row (int *) ;

svn_error_t *
svn_sqlite__read_schema_version(int *version,
                                svn_sqlite__db_t *db,
                                apr_pool_t *scratch_pool)
{
  svn_sqlite__stmt_t *stmt;

  SVN_ERR(prepare_statement(&stmt, db, "PRAGMA user_version;", scratch_pool));
  SVN_ERR(svn_sqlite__step_row(stmt));

  *version = svn_sqlite__column_int(stmt, 0);

  return svn_error_trace(svn_sqlite__finalize(stmt));
}
