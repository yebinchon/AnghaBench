
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_wc__db_wcroot_t ;
typedef int svn_sqlite__stmt_t ;
typedef int svn_sqlite__db_t ;
typedef int svn_error_t ;
typedef int svn_checksum_t ;
typedef int svn_boolean_t ;
typedef int apr_pool_t ;


 int FALSE ;
 int STMT_DELETE_PRISTINE_IF_UNREFERENCED ;
 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int TRUE ;
 int svn_io_remove_file2 (char const*,int ,int *) ;
 int svn_sqlite__bind_checksum (int *,int,int const*,int *) ;
 int svn_sqlite__get_statement (int **,int *,int ) ;
 int svn_sqlite__update (int*,int *) ;

__attribute__((used)) static svn_error_t *
pristine_remove_if_unreferenced_txn(svn_sqlite__db_t *sdb,
                                    svn_wc__db_wcroot_t *wcroot,
                                    const svn_checksum_t *sha1_checksum,
                                    const char *pristine_abspath,
                                    apr_pool_t *scratch_pool)
{
  svn_sqlite__stmt_t *stmt;
  int affected_rows;


  SVN_ERR(svn_sqlite__get_statement(&stmt, sdb,
                                    STMT_DELETE_PRISTINE_IF_UNREFERENCED));
  SVN_ERR(svn_sqlite__bind_checksum(stmt, 1, sha1_checksum, scratch_pool));
  SVN_ERR(svn_sqlite__update(&affected_rows, stmt));


  if (affected_rows > 0)
    {






      svn_boolean_t ignore_enoent = TRUE;


      SVN_ERR(svn_io_remove_file2(pristine_abspath, ignore_enoent,
                                  scratch_pool));
    }

  return SVN_NO_ERROR;
}
