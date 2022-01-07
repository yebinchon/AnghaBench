
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int fs; } ;
typedef TYPE_1__ x_freeze_baton_t ;
typedef int svn_error_t ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int svn_fs_x__with_write_lock (int ,int ,void*,int *) ;
 int x_freeze_body ;

__attribute__((used)) static svn_error_t *
x_freeze_body2(void *baton,
               apr_pool_t *scratch_pool)
{
  x_freeze_baton_t *b = baton;
  SVN_ERR(svn_fs_x__with_write_lock(b->fs, x_freeze_body, baton,
                                    scratch_pool));

  return SVN_NO_ERROR;
}
