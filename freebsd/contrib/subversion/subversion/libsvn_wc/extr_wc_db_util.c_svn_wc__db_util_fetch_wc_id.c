
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_sqlite__stmt_t ;
typedef int svn_sqlite__db_t ;
typedef int svn_error_t ;
typedef int svn_boolean_t ;
typedef int apr_pool_t ;
typedef int apr_int64_t ;


 int STMT_SELECT_WCROOT_NULL ;
 int SVN_ERR (int ) ;
 int SVN_ERR_ASSERT (int) ;
 int SVN_ERR_WC_CORRUPT ;
 int _ (char*) ;
 int * svn_error_createf (int ,int ,int ) ;
 int * svn_error_trace (int ) ;
 int svn_sqlite__column_int64 (int *,int ) ;
 int svn_sqlite__column_is_null (int *,int ) ;
 int svn_sqlite__get_statement (int **,int *,int ) ;
 int svn_sqlite__reset (int *) ;
 int svn_sqlite__step (int *,int *) ;

svn_error_t *
svn_wc__db_util_fetch_wc_id(apr_int64_t *wc_id,
                            svn_sqlite__db_t *sdb,
                            apr_pool_t *scratch_pool)
{
  svn_sqlite__stmt_t *stmt;
  svn_boolean_t have_row;



  SVN_ERR(svn_sqlite__get_statement(&stmt, sdb, STMT_SELECT_WCROOT_NULL));
  SVN_ERR(svn_sqlite__step(&have_row, stmt));
  if (!have_row)
    return svn_error_createf(SVN_ERR_WC_CORRUPT, svn_sqlite__reset(stmt),
                             _("Missing a row in WCROOT."));

  SVN_ERR_ASSERT(!svn_sqlite__column_is_null(stmt, 0));
  *wc_id = svn_sqlite__column_int64(stmt, 0);

  return svn_error_trace(svn_sqlite__reset(stmt));
}
