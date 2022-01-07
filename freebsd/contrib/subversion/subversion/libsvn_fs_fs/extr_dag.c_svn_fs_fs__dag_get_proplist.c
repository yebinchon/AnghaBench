
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int svn_error_t ;
typedef int node_revision_t ;
struct TYPE_4__ {int fs; } ;
typedef TYPE_1__ dag_node_t ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int get_node_revision (int **,TYPE_1__*) ;
 int svn_fs_fs__get_proplist (int **,int ,int *,int *) ;

svn_error_t *
svn_fs_fs__dag_get_proplist(apr_hash_t **proplist_p,
                            dag_node_t *node,
                            apr_pool_t *pool)
{
  node_revision_t *noderev;
  apr_hash_t *proplist = ((void*)0);

  SVN_ERR(get_node_revision(&noderev, node));

  SVN_ERR(svn_fs_fs__get_proplist(&proplist, node->fs,
                                  noderev, pool));

  *proplist_p = proplist;

  return SVN_NO_ERROR;
}
