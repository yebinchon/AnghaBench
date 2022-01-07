
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int parents; } ;
typedef TYPE_1__ svn_branch__history_t ;
typedef int apr_pool_t ;


 TYPE_1__* svn_branch__history_create (int ,int *) ;

svn_branch__history_t *
svn_branch__history_dup(const svn_branch__history_t *old,
                        apr_pool_t *result_pool)
{
  svn_branch__history_t *history = ((void*)0);

  if (old)
    {
      history
        = svn_branch__history_create(old->parents, result_pool);
    }
  return history;
}
