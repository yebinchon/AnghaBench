
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int svn_error_t ;
struct TYPE_4__ {int node_revision; int fs; } ;
typedef TYPE_1__ dag_node_t ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int svn_fs_x__put_node_revision (int ,int ,int *) ;
 int svn_fs_x__update_dag_cache (TYPE_1__*) ;

__attribute__((used)) static svn_error_t *
noderev_changed(dag_node_t *node,
                apr_pool_t *scratch_pool)
{
  SVN_ERR(svn_fs_x__put_node_revision(node->fs, node->node_revision,
                                      scratch_pool));
  svn_fs_x__update_dag_cache(node);

  return SVN_NO_ERROR;
}
