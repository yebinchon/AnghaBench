
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int svn_stream_t ;
typedef int svn_sqlite__stmt_t ;
typedef int svn_sqlite__db_t ;
typedef int svn_error_t ;
typedef int svn_checksum_t ;
typedef scalar_t__ svn_boolean_t ;
typedef int apr_pool_t ;
struct TYPE_4__ {scalar_t__ size; } ;
typedef TYPE_1__ apr_finfo_t ;


 int APR_FINFO_SIZE ;
 int FALSE ;
 int STMT_INSERT_PRISTINE ;
 int STMT_SELECT_PRISTINE ;
 int SVN_ERR (int ) ;
 int SVN_ERR_WC_CORRUPT_TEXT_BASE ;
 int * SVN_NO_ERROR ;
 int TRUE ;
 int _ (char*) ;
 int apr_off_t_toa (int *,scalar_t__) ;
 int svn_checksum_to_cstring_display (int const*,int *) ;
 int * svn_error_createf (int ,int *,int ,int ,int ,int ) ;
 int svn_io_set_file_read_only (char const*,int ,int *) ;
 int svn_io_stat (TYPE_1__*,char const*,int ,int *) ;
 int svn_sqlite__bind_checksum (int *,int,int const*,int *) ;
 int svn_sqlite__bind_int64 (int *,int,scalar_t__) ;
 int svn_sqlite__get_statement (int **,int *,int ) ;
 int svn_sqlite__insert (int *,int *) ;
 int svn_sqlite__reset (int *) ;
 int svn_sqlite__step (scalar_t__*,int *) ;
 int svn_stream__install_delete (int *,int *) ;
 int svn_stream__install_get_info (TYPE_1__*,int *,int ,int *) ;
 int svn_stream__install_stream (int *,char const*,int ,int *) ;

__attribute__((used)) static svn_error_t *
pristine_install_txn(svn_sqlite__db_t *sdb,

                     svn_stream_t *install_stream,

                     const char *pristine_abspath,

                     const svn_checksum_t *sha1_checksum,

                     const svn_checksum_t *md5_checksum,
                     apr_pool_t *scratch_pool)
{
  svn_sqlite__stmt_t *stmt;
  svn_boolean_t have_row;



  SVN_ERR(svn_sqlite__get_statement(&stmt, sdb, STMT_SELECT_PRISTINE));
  SVN_ERR(svn_sqlite__bind_checksum(stmt, 1, sha1_checksum, scratch_pool));
  SVN_ERR(svn_sqlite__step(&have_row, stmt));
  SVN_ERR(svn_sqlite__reset(stmt));

  if (have_row)
    {
      SVN_ERR(svn_stream__install_delete(install_stream, scratch_pool));
      return SVN_NO_ERROR;
    }



  {
    apr_finfo_t finfo;
    SVN_ERR(svn_stream__install_get_info(&finfo, install_stream,
                                         APR_FINFO_SIZE, scratch_pool));
    SVN_ERR(svn_stream__install_stream(install_stream, pristine_abspath,
                                       TRUE, scratch_pool));

    SVN_ERR(svn_sqlite__get_statement(&stmt, sdb, STMT_INSERT_PRISTINE));
    SVN_ERR(svn_sqlite__bind_checksum(stmt, 1, sha1_checksum, scratch_pool));
    SVN_ERR(svn_sqlite__bind_checksum(stmt, 2, md5_checksum, scratch_pool));
    SVN_ERR(svn_sqlite__bind_int64(stmt, 3, finfo.size));
    SVN_ERR(svn_sqlite__insert(((void*)0), stmt));

    SVN_ERR(svn_io_set_file_read_only(pristine_abspath, FALSE, scratch_pool));
  }

  return SVN_NO_ERROR;
}
