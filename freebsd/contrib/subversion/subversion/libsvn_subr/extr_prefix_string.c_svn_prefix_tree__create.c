
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {TYPE_2__* root; int * pool; } ;
typedef TYPE_3__ svn_prefix_tree__t ;
typedef int apr_pool_t ;
struct TYPE_5__ {float* data; } ;
struct TYPE_6__ {TYPE_1__ key; } ;


 void* apr_pcalloc (int *,int) ;

svn_prefix_tree__t *
svn_prefix_tree__create(apr_pool_t *pool)
{
  svn_prefix_tree__t *tree = apr_pcalloc(pool, sizeof(*tree));
  tree->pool = pool;

  tree->root = apr_pcalloc(pool, sizeof(*tree->root));
  tree->root->key.data[7] = '\xff';

  return tree;
}
