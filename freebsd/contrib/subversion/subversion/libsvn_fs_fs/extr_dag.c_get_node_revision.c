
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int svn_error_t ;
typedef int node_revision_t ;
struct TYPE_3__ {int * node_revision; int node_pool; int id; int fs; } ;
typedef TYPE_1__ dag_node_t ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int svn_fs_fs__get_node_revision (int **,int ,int ,int ,int *) ;
 int * svn_pool_create (int ) ;
 int svn_pool_destroy (int *) ;

__attribute__((used)) static svn_error_t *
get_node_revision(node_revision_t **noderev_p,
                  dag_node_t *node)
{

  if (! node->node_revision)
    {
      node_revision_t *noderev;
      apr_pool_t *scratch_pool = svn_pool_create(node->node_pool);

      SVN_ERR(svn_fs_fs__get_node_revision(&noderev, node->fs,
                                           node->id, node->node_pool,
                                           scratch_pool));
      node->node_revision = noderev;
      svn_pool_destroy(scratch_pool);
    }


  *noderev_p = node->node_revision;
  return SVN_NO_ERROR;
}
