
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* vtable; } ;
typedef TYPE_2__ svn_fs_t ;
typedef int svn_fs_freeze_func_t ;
typedef int svn_error_t ;
typedef int apr_pool_t ;
struct TYPE_5__ {int (* freeze ) (TYPE_2__*,int ,void*,int *) ;} ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int stub1 (TYPE_2__*,int ,void*,int *) ;

svn_error_t *
svn_fs_freeze(svn_fs_t *fs,
              svn_fs_freeze_func_t freeze_func,
              void *freeze_baton,
              apr_pool_t *pool)
{
  SVN_ERR(fs->vtable->freeze(fs, freeze_func, freeze_baton, pool));

  return SVN_NO_ERROR;
}
