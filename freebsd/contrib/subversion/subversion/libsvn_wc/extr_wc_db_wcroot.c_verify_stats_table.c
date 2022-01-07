
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_sqlite__stmt_t ;
typedef int svn_sqlite__db_t ;
typedef int svn_error_t ;
typedef int svn_boolean_t ;
typedef int apr_pool_t ;


 int STMT_HAVE_STAT1_TABLE ;
 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int SVN_WC__ENSURE_STAT1_TABLE ;
 int svn_error_clear (int ) ;
 int svn_sqlite__get_statement (int **,int *,int ) ;
 int svn_sqlite__reset (int *) ;
 int svn_sqlite__step (int *,int *) ;
 int svn_wc__db_install_schema_statistics (int *,int *) ;

__attribute__((used)) static svn_error_t *
verify_stats_table(svn_sqlite__db_t *sdb,
                   int format,
                   apr_pool_t *scratch_pool)
{
  svn_sqlite__stmt_t *stmt;
  svn_boolean_t have_row;

  if (format != SVN_WC__ENSURE_STAT1_TABLE)
    return SVN_NO_ERROR;

  SVN_ERR(svn_sqlite__get_statement(&stmt, sdb,
                                    STMT_HAVE_STAT1_TABLE));
  SVN_ERR(svn_sqlite__step(&have_row, stmt));
  SVN_ERR(svn_sqlite__reset(stmt));

  if (!have_row)
    {
      svn_error_clear(
          svn_wc__db_install_schema_statistics(sdb, scratch_pool));
    }

  return SVN_NO_ERROR;
}
