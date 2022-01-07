
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int warning_baton; int (* warning ) (int ,int *) ;} ;
typedef TYPE_1__ svn_fs_t ;
typedef int svn_error_t ;
typedef int apr_pool_t ;


 int stub1 (int ,int *) ;

__attribute__((used)) static svn_error_t *
warn_and_fail_on_cache_errors(svn_error_t *err,
                              void *baton,
                              apr_pool_t *pool)
{
  svn_fs_t *fs = baton;
  (fs->warning)(fs->warning_baton, err);
  return err;
}
