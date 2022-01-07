
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {void* cancel_baton; int cancel_func; void* notify_baton; int notify_func; int * fs; } ;
typedef TYPE_1__ upgrade_baton_t ;
typedef int svn_fs_upgrade_notify_t ;
typedef int svn_fs_t ;
typedef int svn_error_t ;
typedef int svn_cancel_func_t ;
typedef int apr_pool_t ;


 int * svn_fs_x__with_all_locks (int *,int ,void*,int *) ;
 int upgrade_body ;

svn_error_t *
svn_fs_x__upgrade(svn_fs_t *fs,
                  svn_fs_upgrade_notify_t notify_func,
                  void *notify_baton,
                  svn_cancel_func_t cancel_func,
                  void *cancel_baton,
                  apr_pool_t *scratch_pool)
{
  upgrade_baton_t baton;
  baton.fs = fs;
  baton.notify_func = notify_func;
  baton.notify_baton = notify_baton;
  baton.cancel_func = cancel_func;
  baton.cancel_baton = cancel_baton;

  return svn_fs_x__with_all_locks(fs, upgrade_body, (void *)&baton,
                                  scratch_pool);
}
