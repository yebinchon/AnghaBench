
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_sqlite__db_t ;
typedef int svn_error_t ;
typedef int apr_pool_t ;


 int STMT_INSTALL_SCHEMA_STATISTICS ;
 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int svn_sqlite__exec_statements (int *,int ) ;

svn_error_t *
svn_wc__db_install_schema_statistics(svn_sqlite__db_t *sdb,
                                     apr_pool_t *scratch_pool)
{
  SVN_ERR(svn_sqlite__exec_statements(sdb, STMT_INSTALL_SCHEMA_STATISTICS));

  return SVN_NO_ERROR;
}
