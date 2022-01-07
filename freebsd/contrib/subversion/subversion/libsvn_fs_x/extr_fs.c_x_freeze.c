
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {void* freeze_baton; int freeze_func; int * fs; } ;
typedef TYPE_1__ x_freeze_baton_t ;
typedef int svn_fs_t ;
typedef int svn_fs_freeze_func_t ;
typedef int svn_error_t ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int TRUE ;
 int svn_fs__check_fs (int *,int ) ;
 int svn_fs_x__with_pack_lock (int *,int ,TYPE_1__*,int *) ;
 int x_freeze_body2 ;

__attribute__((used)) static svn_error_t *
x_freeze(svn_fs_t *fs,
         svn_fs_freeze_func_t freeze_func,
         void *freeze_baton,
         apr_pool_t *scratch_pool)
{
  x_freeze_baton_t b;

  b.fs = fs;
  b.freeze_func = freeze_func;
  b.freeze_baton = freeze_baton;

  SVN_ERR(svn_fs__check_fs(fs, TRUE));
  SVN_ERR(svn_fs_x__with_pack_lock(fs, x_freeze_body2, &b, scratch_pool));

  return SVN_NO_ERROR;
}
