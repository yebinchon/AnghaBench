
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_fs_t ;
typedef int svn_error_t ;
typedef int svn_cancel_func_t ;
struct recover_baton {void* cancel_baton; int cancel_func; int * fs; } ;
typedef int apr_pool_t ;


 int recover_body ;
 int * svn_fs_fs__with_all_locks (int *,int ,struct recover_baton*,int *) ;

svn_error_t *
svn_fs_fs__recover(svn_fs_t *fs,
                   svn_cancel_func_t cancel_func, void *cancel_baton,
                   apr_pool_t *pool)
{
  struct recover_baton b;





  b.fs = fs;
  b.cancel_func = cancel_func;
  b.cancel_baton = cancel_baton;
  return svn_fs_fs__with_all_locks(fs, recover_body, &b, pool);
}
