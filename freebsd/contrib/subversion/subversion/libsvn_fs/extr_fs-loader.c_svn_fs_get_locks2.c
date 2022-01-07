
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* vtable; } ;
typedef TYPE_2__ svn_fs_t ;
typedef int svn_fs_get_locks_callback_t ;
typedef int svn_error_t ;
typedef scalar_t__ svn_depth_t ;
typedef int apr_pool_t ;
struct TYPE_5__ {int (* get_locks ) (TYPE_2__*,char const*,scalar_t__,int ,void*,int *) ;} ;


 int SVN_ERR_ASSERT (int) ;
 int stub1 (TYPE_2__*,char const*,scalar_t__,int ,void*,int *) ;
 scalar_t__ svn_depth_empty ;
 scalar_t__ svn_depth_files ;
 scalar_t__ svn_depth_immediates ;
 scalar_t__ svn_depth_infinity ;
 int * svn_error_trace (int ) ;

svn_error_t *
svn_fs_get_locks2(svn_fs_t *fs, const char *path, svn_depth_t depth,
                  svn_fs_get_locks_callback_t get_locks_func,
                  void *get_locks_baton, apr_pool_t *pool)
{
  SVN_ERR_ASSERT((depth == svn_depth_empty) ||
                 (depth == svn_depth_files) ||
                 (depth == svn_depth_immediates) ||
                 (depth == svn_depth_infinity));
  return svn_error_trace(fs->vtable->get_locks(fs, path, depth,
                                               get_locks_func,
                                               get_locks_baton, pool));
}
