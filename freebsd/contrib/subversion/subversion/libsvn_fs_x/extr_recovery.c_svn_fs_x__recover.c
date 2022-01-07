
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int svn_fs_t ;
typedef int svn_error_t ;
typedef int svn_cancel_func_t ;
struct TYPE_3__ {void* cancel_baton; int cancel_func; int * fs; } ;
typedef TYPE_1__ recover_baton_t ;
typedef int apr_pool_t ;


 int recover_body ;
 int * svn_fs_x__with_all_locks (int *,int ,TYPE_1__*,int *) ;

svn_error_t *
svn_fs_x__recover(svn_fs_t *fs,
                  svn_cancel_func_t cancel_func,
                  void *cancel_baton,
                  apr_pool_t *scratch_pool)
{
  recover_baton_t b;





  b.fs = fs;
  b.cancel_func = cancel_func;
  b.cancel_baton = cancel_baton;
  return svn_fs_x__with_all_locks(fs, recover_body, &b, scratch_pool);
}
