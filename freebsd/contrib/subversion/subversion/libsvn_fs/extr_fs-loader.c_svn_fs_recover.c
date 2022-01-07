
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int svn_fs_t ;
typedef int svn_error_t ;
typedef int svn_cancel_func_t ;
struct TYPE_3__ {int (* recover ) (int *,int ,void*,int *) ;int (* open_fs_for_recovery ) (int *,char const*,int ,int *,int ) ;} ;
typedef TYPE_1__ fs_library_vtable_t ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int common_pool ;
 int common_pool_lock ;
 int fs_library_vtable (TYPE_1__**,char const*,int *) ;
 int * fs_new (int *,int *) ;
 int stub1 (int *,char const*,int ,int *,int ) ;
 int stub2 (int *,int ,void*,int *) ;
 int * svn_error_trace (int ) ;

svn_error_t *
svn_fs_recover(const char *path,
               svn_cancel_func_t cancel_func, void *cancel_baton,
               apr_pool_t *pool)
{
  fs_library_vtable_t *vtable;
  svn_fs_t *fs;

  SVN_ERR(fs_library_vtable(&vtable, path, pool));
  fs = fs_new(((void*)0), pool);

  SVN_ERR(vtable->open_fs_for_recovery(fs, path, common_pool_lock,
                                       pool, common_pool));
  return svn_error_trace(vtable->recover(fs, cancel_func, cancel_baton,
                                         pool));
}
