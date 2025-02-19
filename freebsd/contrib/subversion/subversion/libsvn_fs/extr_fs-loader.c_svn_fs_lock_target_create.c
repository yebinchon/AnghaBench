
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int svn_revnum_t ;
struct TYPE_4__ {char const* token; int current_rev; } ;
typedef TYPE_1__ svn_fs_lock_target_t ;
typedef int apr_pool_t ;


 TYPE_1__* apr_palloc (int *,int) ;

svn_fs_lock_target_t *
svn_fs_lock_target_create(const char *token,
                          svn_revnum_t current_rev,
                          apr_pool_t *result_pool)
{
  svn_fs_lock_target_t *target = apr_palloc(result_pool, sizeof(*target));

  target->token = token;
  target->current_rev = current_rev;

  return target;
}
