
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int svn_revnum_t ;
typedef int svn_fs_t ;
typedef int svn_fs_progress_notify_func_t ;
typedef int svn_error_t ;
typedef int svn_cancel_func_t ;
struct TYPE_3__ {int (* verify_fs ) (int *,char const*,int ,int ,int ,void*,int ,void*,int ,int *,int ) ;} ;
typedef TYPE_1__ fs_library_vtable_t ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int common_pool ;
 int common_pool_lock ;
 int fs_library_vtable (TYPE_1__**,char const*,int *) ;
 int * fs_new (int *,int *) ;
 int stub1 (int *,char const*,int ,int ,int ,void*,int ,void*,int ,int *,int ) ;
 int svn_fs_set_warning_func (int *,int ,int *) ;
 int verify_fs_warning_func ;

svn_error_t *
svn_fs_verify(const char *path,
              apr_hash_t *fs_config,
              svn_revnum_t start,
              svn_revnum_t end,
              svn_fs_progress_notify_func_t notify_func,
              void *notify_baton,
              svn_cancel_func_t cancel_func,
              void *cancel_baton,
              apr_pool_t *pool)
{
  fs_library_vtable_t *vtable;
  svn_fs_t *fs;

  SVN_ERR(fs_library_vtable(&vtable, path, pool));
  fs = fs_new(fs_config, pool);
  svn_fs_set_warning_func(fs, verify_fs_warning_func, ((void*)0));

  SVN_ERR(vtable->verify_fs(fs, path, start, end,
                            notify_func, notify_baton,
                            cancel_func, cancel_baton,
                            common_pool_lock,
                            pool, common_pool));
  return SVN_NO_ERROR;
}
