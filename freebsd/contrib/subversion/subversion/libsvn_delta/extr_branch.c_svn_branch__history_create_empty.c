
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_branch__history_t ;
typedef int apr_pool_t ;


 int * svn_branch__history_create (int *,int *) ;

svn_branch__history_t *
svn_branch__history_create_empty(apr_pool_t *result_pool)
{
  svn_branch__history_t *history
    = svn_branch__history_create(((void*)0), result_pool);

  return history;
}
