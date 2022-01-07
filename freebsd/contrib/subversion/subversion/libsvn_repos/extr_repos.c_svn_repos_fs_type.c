
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int fs_type; } ;
typedef TYPE_1__ svn_repos_t ;
typedef int apr_pool_t ;


 char const* apr_pstrdup (int *,int ) ;

const char *
svn_repos_fs_type(svn_repos_t *repos,
                  apr_pool_t *result_pool)
{
  return apr_pstrdup(result_pool, repos->fs_type);
}
