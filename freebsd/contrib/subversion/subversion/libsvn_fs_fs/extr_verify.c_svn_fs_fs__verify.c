
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef scalar_t__ svn_revnum_t ;
struct TYPE_9__ {TYPE_2__* fsap_data; } ;
typedef TYPE_1__ svn_fs_t ;
typedef int svn_fs_progress_notify_func_t ;
typedef int svn_error_t ;
typedef int svn_cancel_func_t ;
struct TYPE_10__ {scalar_t__ format; } ;
typedef TYPE_2__ fs_fs_data_t ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 scalar_t__ SVN_FS_FS__MIN_REP_SHARING_FORMAT ;
 int SVN_IS_VALID_REVNUM (scalar_t__) ;
 int * SVN_NO_ERROR ;
 int svn_fs_fs__ensure_revision_exists (scalar_t__,TYPE_1__*,int *) ;
 scalar_t__ svn_fs_fs__use_log_addressing (TYPE_1__*) ;
 int svn_fs_fs__youngest_rev (scalar_t__*,TYPE_1__*,int *) ;
 int verify_f7_metadata_consistency (TYPE_1__*,scalar_t__,scalar_t__,int ,void*,int ,void*,int *) ;
 int verify_rep_cache (TYPE_1__*,scalar_t__,scalar_t__,int ,void*,int ,void*,int *) ;

svn_error_t *
svn_fs_fs__verify(svn_fs_t *fs,
                  svn_revnum_t start,
                  svn_revnum_t end,
                  svn_fs_progress_notify_func_t notify_func,
                  void *notify_baton,
                  svn_cancel_func_t cancel_func,
                  void *cancel_baton,
                  apr_pool_t *pool)
{
  fs_fs_data_t *ffd = fs->fsap_data;


  if (! SVN_IS_VALID_REVNUM(start))
    start = 0;
  if (! SVN_IS_VALID_REVNUM(end))
    {
      SVN_ERR(svn_fs_fs__youngest_rev(&end, fs, pool));
    }

  SVN_ERR(svn_fs_fs__ensure_revision_exists(start, fs, pool));
  SVN_ERR(svn_fs_fs__ensure_revision_exists(end, fs, pool));



  if (svn_fs_fs__use_log_addressing(fs))
    SVN_ERR(verify_f7_metadata_consistency(fs, start, end,
                                           notify_func, notify_baton,
                                           cancel_func, cancel_baton, pool));


  if (ffd->format >= SVN_FS_FS__MIN_REP_SHARING_FORMAT)
    SVN_ERR(verify_rep_cache(fs, start, end, notify_func, notify_baton,
                             cancel_func, cancel_baton, pool));

  return SVN_NO_ERROR;
}
