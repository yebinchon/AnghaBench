
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


typedef int svn_revnum_t ;
struct TYPE_14__ {int start_revision; } ;
struct TYPE_15__ {TYPE_1__ file_info; int stream; int * file; int * fs; } ;
typedef TYPE_2__ svn_fs_x__revision_file_t ;
typedef int svn_fs_t ;
struct TYPE_16__ {int apr_err; } ;
typedef TYPE_3__ svn_error_t ;
typedef scalar_t__ svn_boolean_t ;
typedef int apr_pool_t ;
typedef int apr_int32_t ;
typedef int apr_file_t ;


 int APR_BUFFERED ;
 int APR_OS_DEFAULT ;
 int APR_READ ;
 scalar_t__ APR_STATUS_IS_ENOENT (int ) ;
 int APR_WRITE ;
 scalar_t__ FALSE ;
 int SVN_ERR (int ) ;
 int SVN_ERR_FS_NO_SUCH_REVISION ;
 TYPE_3__* SVN_NO_ERROR ;
 scalar_t__ TRUE ;
 int _ (char*) ;
 TYPE_3__* auto_make_writable (char const*,int *,int *) ;
 int * get_file_pool (TYPE_2__*) ;
 int svn_error_clear (TYPE_3__*) ;
 TYPE_3__* svn_error_createf (int ,int *,int ,int ) ;
 TYPE_3__* svn_error_trace (TYPE_3__*) ;
 int svn_fs_x__packed_base_rev (int *,int ) ;
 char* svn_fs_x__path_rev_absolute (int *,int ,int *) ;
 int svn_fs_x__update_min_unpacked_rev (int *,int *) ;
 TYPE_3__* svn_io_file_open (int **,char const*,int,int ,int *) ;
 int svn_stream_from_aprfile2 (int *,scalar_t__,int *) ;

__attribute__((used)) static svn_error_t *
open_pack_or_rev_file(svn_fs_x__revision_file_t *file,
                      svn_boolean_t writable,
                      apr_pool_t *scratch_pool)
{
  svn_error_t *err;
  svn_boolean_t retry = FALSE;
  svn_fs_t *fs = file->fs;
  svn_revnum_t rev = file->file_info.start_revision;
  apr_pool_t *file_pool = get_file_pool(file);

  do
    {
      const char *path = svn_fs_x__path_rev_absolute(fs, rev, scratch_pool);
      apr_file_t *apr_file;
      apr_int32_t flags = writable
                        ? APR_READ | APR_WRITE | APR_BUFFERED
                        : APR_READ | APR_BUFFERED;


      err = writable ? auto_make_writable(path, file_pool, scratch_pool)
                     : SVN_NO_ERROR;


      if (!err)
        err = svn_io_file_open(&apr_file, path, flags, APR_OS_DEFAULT,
                               file_pool);

      if (!err)
        {
          file->file = apr_file;
          file->stream = svn_stream_from_aprfile2(apr_file, TRUE,
                                                  file_pool);

          return SVN_NO_ERROR;
        }

      if (err && APR_STATUS_IS_ENOENT(err->apr_err))
        {


          svn_error_clear(err);


          if (retry)
            return svn_error_createf(SVN_ERR_FS_NO_SUCH_REVISION, ((void*)0),
                                     _("No such revision %ld"), rev);


          SVN_ERR(svn_fs_x__update_min_unpacked_rev(fs, scratch_pool));
          file->file_info.start_revision = svn_fs_x__packed_base_rev(fs, rev);

          retry = TRUE;
        }
      else
        {
          retry = FALSE;
        }
    }
  while (retry);

  return svn_error_trace(err);
}
