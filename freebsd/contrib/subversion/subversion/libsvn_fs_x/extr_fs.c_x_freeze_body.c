
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int freeze_baton; int (* freeze_func ) (int ,int *) ;int fs; } ;
typedef TYPE_1__ x_freeze_baton_t ;
typedef int svn_error_t ;
typedef scalar_t__ svn_boolean_t ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int stub1 (int ,int *) ;
 int svn_fs_x__exists_rep_cache (scalar_t__*,int ,int *) ;
 int svn_fs_x__with_rep_cache_lock (int ,int (*) (int ,int *),int ,int *) ;

__attribute__((used)) static svn_error_t *
x_freeze_body(void *baton,
              apr_pool_t *scratch_pool)
{
  x_freeze_baton_t *b = baton;
  svn_boolean_t exists;

  SVN_ERR(svn_fs_x__exists_rep_cache(&exists, b->fs, scratch_pool));
  if (exists)
    SVN_ERR(svn_fs_x__with_rep_cache_lock(b->fs,
                                          b->freeze_func, b->freeze_baton,
                                          scratch_pool));
  else
    SVN_ERR(b->freeze_func(b->freeze_baton, scratch_pool));

  return SVN_NO_ERROR;
}
