
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ svn_revnum_t ;
typedef int svn_fs_t ;
typedef int svn_fs_progress_notify_func_t ;
typedef int svn_error_t ;
typedef int svn_cancel_func_t ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int SVN_IS_VALID_REVNUM (scalar_t__) ;
 int * SVN_NO_ERROR ;
 int svn_fs_x__ensure_revision_exists (scalar_t__,int *,int *) ;
 int svn_fs_x__youngest_rev (scalar_t__*,int *,int *) ;
 int verify_metadata_consistency (int *,scalar_t__,scalar_t__,int ,void*,int ,void*,int *) ;
 int verify_rep_cache (int *,scalar_t__,scalar_t__,int ,void*,int ,void*,int *) ;

svn_error_t *
svn_fs_x__verify(svn_fs_t *fs,
                 svn_revnum_t start,
                 svn_revnum_t end,
                 svn_fs_progress_notify_func_t notify_func,
                 void *notify_baton,
                 svn_cancel_func_t cancel_func,
                 void *cancel_baton,
                 apr_pool_t *scratch_pool)
{

  if (! SVN_IS_VALID_REVNUM(start))
    start = 0;
  if (! SVN_IS_VALID_REVNUM(end))
    {
      SVN_ERR(svn_fs_x__youngest_rev(&end, fs, scratch_pool));
    }

  SVN_ERR(svn_fs_x__ensure_revision_exists(start, fs, scratch_pool));
  SVN_ERR(svn_fs_x__ensure_revision_exists(end, fs, scratch_pool));



  SVN_ERR(verify_metadata_consistency(fs, start, end,
                                      notify_func, notify_baton,
                                      cancel_func, cancel_baton,
                                      scratch_pool));


  SVN_ERR(verify_rep_cache(fs, start, end, notify_func, notify_baton,
                            cancel_func, cancel_baton, scratch_pool));

  return SVN_NO_ERROR;
}
