
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int svn_fs_upgrade_notify_t ;
typedef int svn_fs_t ;
typedef int svn_error_t ;
typedef int svn_cancel_func_t ;
struct TYPE_3__ {int (* upgrade_fs ) (int *,char const*,int ,void*,int ,void*,int ,int *,int ) ;} ;
typedef TYPE_1__ fs_library_vtable_t ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int common_pool ;
 int common_pool_lock ;
 int fs_library_vtable (TYPE_1__**,char const*,int *) ;
 int * fs_new (int *,int *) ;
 int stub1 (int *,char const*,int ,void*,int ,void*,int ,int *,int ) ;

svn_error_t *
svn_fs_upgrade2(const char *path,
                svn_fs_upgrade_notify_t notify_func,
                void *notify_baton,
                svn_cancel_func_t cancel_func,
                void *cancel_baton,
                apr_pool_t *scratch_pool)
{
  fs_library_vtable_t *vtable;
  svn_fs_t *fs;

  SVN_ERR(fs_library_vtable(&vtable, path, scratch_pool));
  fs = fs_new(((void*)0), scratch_pool);

  SVN_ERR(vtable->upgrade_fs(fs, path,
                             notify_func, notify_baton,
                             cancel_func, cancel_baton,
                             common_pool_lock,
                             scratch_pool, common_pool));
  return SVN_NO_ERROR;
}
