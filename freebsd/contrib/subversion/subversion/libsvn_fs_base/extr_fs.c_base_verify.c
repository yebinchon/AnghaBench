
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_revnum_t ;
typedef int svn_mutex__t ;
typedef int svn_fs_t ;
typedef int svn_fs_progress_notify_func_t ;
typedef int svn_error_t ;
typedef int svn_cancel_func_t ;
typedef int apr_pool_t ;


 int * SVN_NO_ERROR ;

__attribute__((used)) static svn_error_t *
base_verify(svn_fs_t *fs, const char *path,
            svn_revnum_t start,
            svn_revnum_t end,
            svn_fs_progress_notify_func_t notify_func,
            void *notify_baton,
            svn_cancel_func_t cancel_func,
            void *cancel_baton,
            svn_mutex__t *common_pool_lock,
            apr_pool_t *pool,
            apr_pool_t *common_pool)
{

  return SVN_NO_ERROR;
}
