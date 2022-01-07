
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_12__ {int apr_err; } ;
typedef TYPE_1__ svn_error_t ;
typedef int svn_boolean_t ;
struct TYPE_13__ {int reject_stream; int local_abspath; scalar_t__ had_prop_rejects; scalar_t__ had_rejects; } ;
typedef TYPE_2__ patch_target_t ;
typedef int apr_pool_t ;
typedef int apr_file_t ;


 scalar_t__ APR_STATUS_IS_ENOENT (int ) ;
 int FALSE ;
 int SVN_ERR (TYPE_1__*) ;
 TYPE_1__* SVN_NO_ERROR ;
 int svn_dirent_basename (int ,int *) ;
 char const* svn_dirent_dirname (int ,int *) ;
 int svn_error_clear (TYPE_1__*) ;
 int svn_io_file_del_none ;
 TYPE_1__* svn_io_open_uniquely_named (int **,int *,char const*,int ,char*,int ,int *,int *) ;
 TYPE_1__* svn_stream_close (int ) ;
 TYPE_1__* svn_stream_copy3 (int ,int ,int *,int *,int *) ;
 int svn_stream_from_aprfile2 (int *,int ,int *) ;
 TYPE_1__* svn_stream_reset (int ) ;

__attribute__((used)) static svn_error_t *
write_out_rejected_hunks(patch_target_t *target,
                         const char *root_abspath,
                         svn_boolean_t dry_run,
                         apr_pool_t *scratch_pool)
{
  if (! dry_run && (target->had_rejects || target->had_prop_rejects))
    {

      apr_file_t *reject_file;
      svn_error_t *err;

      err = svn_io_open_uniquely_named(&reject_file, ((void*)0),
                                       svn_dirent_dirname(target->local_abspath,
                                                          scratch_pool),
                                       svn_dirent_basename(
                                         target->local_abspath,
                                         ((void*)0)),
                                       ".svnpatch.rej",
                                       svn_io_file_del_none,
                                       scratch_pool, scratch_pool);
      if (err && APR_STATUS_IS_ENOENT(err->apr_err))
        {


          svn_error_clear(err);
          SVN_ERR(svn_io_open_uniquely_named(&reject_file, ((void*)0),
                                             root_abspath,
                                             svn_dirent_basename(
                                               target->local_abspath,
                                               ((void*)0)),
                                             ".svnpatch.rej",
                                             svn_io_file_del_none,
                                             scratch_pool, scratch_pool));
        }
      else
        SVN_ERR(err);

      SVN_ERR(svn_stream_reset(target->reject_stream));


      SVN_ERR(svn_stream_copy3(target->reject_stream,
                                  svn_stream_from_aprfile2(reject_file, FALSE,
                                                           scratch_pool),
                                  ((void*)0), ((void*)0), scratch_pool));

    }
  else
    SVN_ERR(svn_stream_close(target->reject_stream));

  return SVN_NO_ERROR;
}
