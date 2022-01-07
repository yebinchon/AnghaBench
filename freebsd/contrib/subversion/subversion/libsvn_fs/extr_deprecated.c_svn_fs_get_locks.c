
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_fs_t ;
typedef int svn_fs_get_locks_callback_t ;
typedef int svn_error_t ;
typedef int apr_pool_t ;


 int svn_depth_infinity ;
 int * svn_error_trace (int ) ;
 int svn_fs_get_locks2 (int *,char const*,int ,int ,void*,int *) ;

svn_error_t *
svn_fs_get_locks(svn_fs_t *fs, const char *path,
                 svn_fs_get_locks_callback_t get_locks_func,
                 void *get_locks_baton, apr_pool_t *pool)
{
  return svn_error_trace(svn_fs_get_locks2(fs, path, svn_depth_infinity,
                                           get_locks_func, get_locks_baton,
                                           pool));
}
