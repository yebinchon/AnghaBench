
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int sdb; } ;
typedef TYPE_1__ svn_wc__db_wcroot_t ;
typedef int svn_stream_t ;
typedef int svn_sqlite__stmt_t ;
typedef int svn_filesize_t ;
typedef int svn_error_t ;
typedef int svn_checksum_t ;
typedef int svn_boolean_t ;
typedef int apr_pool_t ;
typedef int apr_file_t ;


 int APR_OS_DEFAULT ;
 int APR_READ ;
 int FALSE ;
 int STMT_SELECT_PRISTINE_SIZE ;
 int SVN_ERR (int ) ;
 int SVN_ERR_WC_PATH_NOT_FOUND ;
 int * SVN_NO_ERROR ;
 int _ (char*) ;
 int svn_checksum_to_cstring_display (int const*,int *) ;
 int * svn_error_createf (int ,int *,int ,int ) ;
 int svn_io_file_open (int **,char const*,int ,int ,int *) ;
 int svn_sqlite__bind_checksum (int *,int,int const*,int *) ;
 int svn_sqlite__column_int64 (int *,int ) ;
 int svn_sqlite__get_statement (int **,int ,int ) ;
 int svn_sqlite__reset (int *) ;
 int svn_sqlite__step (int *,int *) ;
 int * svn_stream_from_aprfile2 (int *,int ,int *) ;

__attribute__((used)) static svn_error_t *
pristine_read_txn(svn_stream_t **contents,
                  svn_filesize_t *size,
                  svn_wc__db_wcroot_t *wcroot,
                  const svn_checksum_t *sha1_checksum,
                  const char *pristine_abspath,
                  apr_pool_t *result_pool,
                  apr_pool_t *scratch_pool)
{
  svn_sqlite__stmt_t *stmt;
  svn_boolean_t have_row;



  SVN_ERR(svn_sqlite__get_statement(&stmt, wcroot->sdb,
                                    STMT_SELECT_PRISTINE_SIZE));
  SVN_ERR(svn_sqlite__bind_checksum(stmt, 1, sha1_checksum, scratch_pool));
  SVN_ERR(svn_sqlite__step(&have_row, stmt));

  if (size)
    *size = svn_sqlite__column_int64(stmt, 0);

  SVN_ERR(svn_sqlite__reset(stmt));
  if (! have_row)
    {
      return svn_error_createf(SVN_ERR_WC_PATH_NOT_FOUND, ((void*)0),
                               _("Pristine text '%s' not present"),
                               svn_checksum_to_cstring_display(
                                 sha1_checksum, scratch_pool));
    }
  if (contents)
    {
      apr_file_t *file;
      SVN_ERR(svn_io_file_open(&file, pristine_abspath, APR_READ,
                               APR_OS_DEFAULT, result_pool));
      *contents = svn_stream_from_aprfile2(file, FALSE, result_pool);
    }

  return SVN_NO_ERROR;
}
