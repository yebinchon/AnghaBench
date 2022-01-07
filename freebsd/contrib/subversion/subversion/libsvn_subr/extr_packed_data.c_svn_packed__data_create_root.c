
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * pool; } ;
typedef TYPE_1__ svn_packed__data_root_t ;
typedef int apr_pool_t ;


 TYPE_1__* apr_pcalloc (int *,int) ;

svn_packed__data_root_t *
svn_packed__data_create_root(apr_pool_t *pool)
{
  svn_packed__data_root_t *root = apr_pcalloc(pool, sizeof(*root));
  root->pool = pool;

  return root;
}
