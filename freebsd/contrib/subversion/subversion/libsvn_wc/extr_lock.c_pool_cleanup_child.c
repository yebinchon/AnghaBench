
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int pool; } ;
typedef TYPE_1__ svn_wc_adm_access_t ;
typedef int apr_status_t ;


 int APR_SUCCESS ;
 int apr_pool_cleanup_kill (int ,TYPE_1__*,int ) ;
 int pool_cleanup_locked ;
 int pool_cleanup_readonly ;

__attribute__((used)) static apr_status_t
pool_cleanup_child(void *p)
{
  svn_wc_adm_access_t *lock = p;

  apr_pool_cleanup_kill(lock->pool, lock, pool_cleanup_locked);
  apr_pool_cleanup_kill(lock->pool, lock, pool_cleanup_readonly);

  return APR_SUCCESS;
}
