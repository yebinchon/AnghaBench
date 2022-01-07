
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * pool; int rev_roots; } ;
typedef TYPE_1__ svn_branch__repos_t ;
typedef int apr_pool_t ;


 int apr_array_make (int *,int ,int) ;
 TYPE_1__* apr_pcalloc (int *,int) ;

svn_branch__repos_t *
svn_branch__repos_create(apr_pool_t *result_pool)
{
  svn_branch__repos_t *repos = apr_pcalloc(result_pool, sizeof(*repos));

  repos->rev_roots = apr_array_make(result_pool, 0, sizeof(void *));
  repos->pool = result_pool;
  return repos;
}
