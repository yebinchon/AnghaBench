
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_3__ ;
typedef struct TYPE_19__ TYPE_2__ ;
typedef struct TYPE_18__ TYPE_1__ ;


struct TYPE_19__ {struct install_baton_t* baton; } ;
typedef TYPE_2__ svn_stream_t ;
struct TYPE_20__ {scalar_t__ apr_err; } ;
typedef TYPE_3__ svn_error_t ;
typedef scalar_t__ svn_boolean_t ;
struct TYPE_18__ {int file; } ;
struct install_baton_t {int tmp_path; TYPE_1__ baton_apr; } ;
typedef int apr_pool_t ;


 scalar_t__ APR_STATUS_IS_ENOENT (scalar_t__) ;
 int FALSE ;
 int SVN_ERR (TYPE_3__*) ;
 int SVN_ERR_ASSERT (int ) ;
 scalar_t__ SVN_ERR_UNSUPPORTED_FEATURE ;
 TYPE_3__* SVN_NO_ERROR ;
 int svn_dirent_dirname (char const*,int *) ;
 int svn_dirent_is_absolute (char const*) ;
 int svn_error_clear (TYPE_3__*) ;
 TYPE_3__* svn_error_compose_create (TYPE_3__*,TYPE_3__*) ;
 TYPE_3__* svn_error_trace (TYPE_3__*) ;
 TYPE_3__* svn_io__win_rename_open_file (int ,int ,char const*,int *) ;
 TYPE_3__* svn_io_file_close (int ,int *) ;
 TYPE_3__* svn_io_file_rename2 (int ,char const*,int ,int *) ;
 TYPE_3__* svn_io_make_dir_recursively (int ,int *) ;

svn_error_t *
svn_stream__install_stream(svn_stream_t *install_stream,
                           const char *final_abspath,
                           svn_boolean_t make_parents,
                           apr_pool_t *scratch_pool)
{
  struct install_baton_t *ib = install_stream->baton;
  svn_error_t *err;

  SVN_ERR_ASSERT(svn_dirent_is_absolute(final_abspath));
  SVN_ERR(svn_io_file_close(ib->baton_apr.file, scratch_pool));

  err = svn_io_file_rename2(ib->tmp_path, final_abspath, FALSE, scratch_pool);


  if (make_parents && err && APR_STATUS_IS_ENOENT(err->apr_err))
    {
      svn_error_t *err2;

      err2 = svn_io_make_dir_recursively(svn_dirent_dirname(final_abspath,
                                                            scratch_pool),
                                         scratch_pool);

      if (err2)

        return svn_error_trace(svn_error_compose_create(err, err2));
      else

        svn_error_clear(err);

      SVN_ERR(svn_io_file_rename2(ib->tmp_path, final_abspath, FALSE, scratch_pool));
    }
  else
    SVN_ERR(err);

  return SVN_NO_ERROR;
}
