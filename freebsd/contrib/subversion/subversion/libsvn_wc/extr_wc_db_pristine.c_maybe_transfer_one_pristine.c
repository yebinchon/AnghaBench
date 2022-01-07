
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_24__ TYPE_2__ ;
typedef struct TYPE_23__ TYPE_1__ ;


struct TYPE_23__ {int abspath; int sdb; } ;
typedef TYPE_1__ svn_wc__db_wcroot_t ;
typedef int svn_stream_t ;
typedef int svn_sqlite__stmt_t ;
struct TYPE_24__ {int apr_err; } ;
typedef TYPE_2__ svn_error_t ;
typedef int svn_checksum_t ;
typedef int svn_cancel_func_t ;
typedef int apr_pool_t ;
typedef int apr_int64_t ;


 int APR_OS_DEFAULT ;
 scalar_t__ APR_STATUS_IS_ENOENT (int ) ;
 int FALSE ;
 int STMT_INSERT_OR_IGNORE_PRISTINE ;
 int SVN_ERR (TYPE_2__*) ;
 TYPE_2__* SVN_NO_ERROR ;
 TYPE_2__* get_pristine_fname (char const**,int ,int const*,int *,int *) ;
 int pristine_get_tempdir (TYPE_1__*,int *,int *) ;
 int svn_dirent_dirname (char const*,int *) ;
 int svn_error_clear (TYPE_2__*) ;
 int svn_error_compose_create (TYPE_2__*,TYPE_2__*) ;
 TYPE_2__* svn_error_trace (int ) ;
 TYPE_2__* svn_io_dir_make (int ,int ,int *) ;
 int svn_io_file_del_on_pool_cleanup ;
 TYPE_2__* svn_io_file_rename2 (char const*,char const*,int ,int *) ;
 TYPE_2__* svn_sqlite__bind_checksum (int *,int,int const*,int *) ;
 TYPE_2__* svn_sqlite__bind_int64 (int *,int,int ) ;
 TYPE_2__* svn_sqlite__get_statement (int **,int ,int ) ;
 TYPE_2__* svn_sqlite__update (int*,int *) ;
 TYPE_2__* svn_stream_copy3 (int *,int *,int ,void*,int *) ;
 TYPE_2__* svn_stream_open_readonly (int **,char const*,int *,int *) ;
 TYPE_2__* svn_stream_open_unique (int **,char const**,int ,int ,int *,int *) ;

__attribute__((used)) static svn_error_t *
maybe_transfer_one_pristine(svn_wc__db_wcroot_t *src_wcroot,
                            svn_wc__db_wcroot_t *dst_wcroot,
                            const svn_checksum_t *checksum,
                            const svn_checksum_t *md5_checksum,
                            apr_int64_t size,
                            svn_cancel_func_t cancel_func,
                            void *cancel_baton,
                            apr_pool_t *scratch_pool)
{
  const char *pristine_abspath;
  svn_sqlite__stmt_t *stmt;
  svn_stream_t *src_stream;
  svn_stream_t *dst_stream;
  const char *tmp_abspath;
  const char *src_abspath;
  int affected_rows;
  svn_error_t *err;

  SVN_ERR(svn_sqlite__get_statement(&stmt, dst_wcroot->sdb,
                                    STMT_INSERT_OR_IGNORE_PRISTINE));
  SVN_ERR(svn_sqlite__bind_checksum(stmt, 1, checksum, scratch_pool));
  SVN_ERR(svn_sqlite__bind_checksum(stmt, 2, md5_checksum, scratch_pool));
  SVN_ERR(svn_sqlite__bind_int64(stmt, 3, size));

  SVN_ERR(svn_sqlite__update(&affected_rows, stmt));

  if (affected_rows == 0)
    return SVN_NO_ERROR;

  SVN_ERR(svn_stream_open_unique(&dst_stream, &tmp_abspath,
                                 pristine_get_tempdir(dst_wcroot,
                                                      scratch_pool,
                                                      scratch_pool),
                                 svn_io_file_del_on_pool_cleanup,
                                 scratch_pool, scratch_pool));

  SVN_ERR(get_pristine_fname(&src_abspath, src_wcroot->abspath, checksum,
                             scratch_pool, scratch_pool));

  SVN_ERR(svn_stream_open_readonly(&src_stream, src_abspath,
                                   scratch_pool, scratch_pool));


  SVN_ERR(svn_stream_copy3(src_stream, dst_stream,
                           cancel_func, cancel_baton,
                           scratch_pool));

  SVN_ERR(get_pristine_fname(&pristine_abspath, dst_wcroot->abspath, checksum,
                             scratch_pool, scratch_pool));



  err = svn_io_file_rename2(tmp_abspath, pristine_abspath, FALSE,
                            scratch_pool);


  if (err && APR_STATUS_IS_ENOENT(err->apr_err))
    {
      svn_error_t *err2;

      err2 = svn_io_dir_make(svn_dirent_dirname(pristine_abspath,
                                                scratch_pool),
                             APR_OS_DEFAULT, scratch_pool);

      if (err2)

        return svn_error_trace(svn_error_compose_create(err, err2));
      else

        svn_error_clear(err);

      SVN_ERR(svn_io_file_rename2(tmp_abspath, pristine_abspath, FALSE,
                                  scratch_pool));
    }
  else
    SVN_ERR(err);

  return SVN_NO_ERROR;
}
