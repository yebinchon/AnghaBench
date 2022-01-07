
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_mutex__t ;
typedef int svn_fs_t ;
typedef int svn_fs_hotcopy_notify_t ;
typedef int svn_error_t ;
typedef int svn_cancel_func_t ;
typedef int svn_boolean_t ;
typedef int apr_pool_t ;


 int FALSE ;
 int SVN_ERR (int ) ;
 int fs_open (int *,char const*,int *,int *,int *) ;
 int initialize_fs_struct (int *) ;
 int svn_fs__check_fs (int *,int ) ;
 int * svn_fs_fs__hotcopy (int *,int *,char const*,char const*,int ,int ,void*,int ,void*,int *,int *,int *) ;

__attribute__((used)) static svn_error_t *
fs_hotcopy(svn_fs_t *src_fs,
           svn_fs_t *dst_fs,
           const char *src_path,
           const char *dst_path,
           svn_boolean_t clean_logs,
           svn_boolean_t incremental,
           svn_fs_hotcopy_notify_t notify_func,
           void *notify_baton,
           svn_cancel_func_t cancel_func,
           void *cancel_baton,
           svn_mutex__t *common_pool_lock,
           apr_pool_t *pool,
           apr_pool_t *common_pool)
{
  SVN_ERR(fs_open(src_fs, src_path, common_pool_lock, pool, common_pool));

  SVN_ERR(svn_fs__check_fs(dst_fs, FALSE));
  SVN_ERR(initialize_fs_struct(dst_fs));





  return svn_fs_fs__hotcopy(src_fs, dst_fs, src_path, dst_path,
                            incremental, notify_func, notify_baton,
                            cancel_func, cancel_baton, common_pool_lock,
                            pool, common_pool);
}
