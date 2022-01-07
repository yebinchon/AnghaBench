
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int lock_path; } ;
typedef TYPE_1__ svn_repos_t ;
typedef int apr_pool_t ;


 char const* apr_pstrdup (int *,int ) ;

const char *
svn_repos_lock_dir(svn_repos_t *repos, apr_pool_t *pool)
{
  return apr_pstrdup(pool, repos->lock_path);
}
