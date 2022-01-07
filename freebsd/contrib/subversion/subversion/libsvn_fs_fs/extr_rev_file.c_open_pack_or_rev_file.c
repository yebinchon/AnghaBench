
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_22__ TYPE_4__ ;
typedef struct TYPE_21__ TYPE_3__ ;
typedef struct TYPE_20__ TYPE_2__ ;
typedef struct TYPE_19__ TYPE_1__ ;


typedef int svn_revnum_t ;
struct TYPE_19__ {TYPE_4__* fsap_data; } ;
typedef TYPE_1__ svn_fs_t ;
struct TYPE_20__ {int start_revision; int is_packed; int stream; int * file; } ;
typedef TYPE_2__ svn_fs_fs__revision_file_t ;
struct TYPE_21__ {int apr_err; } ;
typedef TYPE_3__ svn_error_t ;
typedef scalar_t__ svn_boolean_t ;
struct TYPE_22__ {scalar_t__ format; } ;
typedef TYPE_4__ fs_fs_data_t ;
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
 scalar_t__ SVN_FS_FS__MIN_PACKED_FORMAT ;
 TYPE_3__* SVN_NO_ERROR ;
 scalar_t__ TRUE ;
 int _ (char*) ;
 TYPE_3__* auto_make_writable (char const*,int *,int *) ;
 int svn_error_clear (TYPE_3__*) ;
 TYPE_3__* svn_error_createf (int ,int *,int ,int ) ;
 TYPE_3__* svn_error_trace (TYPE_3__*) ;
 int svn_fs_fs__is_packed_rev (TYPE_1__*,int ) ;
 int svn_fs_fs__packed_base_rev (TYPE_1__*,int ) ;
 char* svn_fs_fs__path_rev_absolute (TYPE_1__*,int ,int *) ;
 int svn_fs_fs__update_min_unpacked_rev (TYPE_1__*,int *) ;
 TYPE_3__* svn_io_file_open (int **,char const*,int,int ,int *) ;
 int svn_stream_from_aprfile2 (int *,scalar_t__,int *) ;

__attribute__((used)) static svn_error_t *
open_pack_or_rev_file(svn_fs_fs__revision_file_t *file,
                      svn_fs_t *fs,
                      svn_revnum_t rev,
                      svn_boolean_t writable,
                      apr_pool_t *result_pool,
                      apr_pool_t *scratch_pool)
{
  fs_fs_data_t *ffd = fs->fsap_data;
  svn_error_t *err;
  svn_boolean_t retry = FALSE;

  do
    {
      const char *path = svn_fs_fs__path_rev_absolute(fs, rev, scratch_pool);
      apr_file_t *apr_file;
      apr_int32_t flags = writable
                        ? APR_READ | APR_WRITE | APR_BUFFERED
                        : APR_READ | APR_BUFFERED;


      err = writable ? auto_make_writable(path, result_pool, scratch_pool)
                     : SVN_NO_ERROR;


      if (!err)
        err = svn_io_file_open(&apr_file, path, flags, APR_OS_DEFAULT,
                               result_pool);

      if (!err)
        {
          file->file = apr_file;
          file->stream = svn_stream_from_aprfile2(apr_file, TRUE,
                                                  result_pool);
          file->is_packed = svn_fs_fs__is_packed_rev(fs, rev);

          return SVN_NO_ERROR;
        }

      if (err && APR_STATUS_IS_ENOENT(err->apr_err))
        {
          if (ffd->format >= SVN_FS_FS__MIN_PACKED_FORMAT)
            {


              svn_error_clear(err);


              if (retry)
                return svn_error_createf(SVN_ERR_FS_NO_SUCH_REVISION, ((void*)0),
                                         _("No such revision %ld"), rev);


              SVN_ERR(svn_fs_fs__update_min_unpacked_rev(fs, scratch_pool));
              file->start_revision = svn_fs_fs__packed_base_rev(fs, rev);

              retry = TRUE;
            }
          else
            {
              svn_error_clear(err);
              return svn_error_createf(SVN_ERR_FS_NO_SUCH_REVISION, ((void*)0),
                                       _("No such revision %ld"), rev);
            }
        }
      else
        {
          retry = FALSE;
        }
    }
  while (retry);

  return svn_error_trace(err);
}
