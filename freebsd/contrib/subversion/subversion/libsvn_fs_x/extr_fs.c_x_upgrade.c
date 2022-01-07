
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_mutex__t ;
typedef int svn_fs_upgrade_notify_t ;
typedef int svn_fs_t ;
typedef int svn_error_t ;
typedef int svn_cancel_func_t ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int * svn_fs_x__upgrade (int *,int ,void*,int ,void*,int *) ;
 int x_open (int *,char const*,int *,int *,int *) ;

__attribute__((used)) static svn_error_t *
x_upgrade(svn_fs_t *fs,
          const char *path,
          svn_fs_upgrade_notify_t notify_func,
          void *notify_baton,
          svn_cancel_func_t cancel_func,
          void *cancel_baton,
          svn_mutex__t *common_pool_lock,
          apr_pool_t *scratch_pool,
          apr_pool_t *common_pool)
{
  SVN_ERR(x_open(fs, path, common_pool_lock, scratch_pool, common_pool));
  return svn_fs_x__upgrade(fs, notify_func, notify_baton,
                           cancel_func, cancel_baton, scratch_pool);
}
