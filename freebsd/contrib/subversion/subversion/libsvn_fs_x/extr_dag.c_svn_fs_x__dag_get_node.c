
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int svn_fs_x__noderev_t ;
typedef int svn_fs_x__id_t ;
typedef int svn_fs_t ;
typedef int svn_error_t ;
struct TYPE_4__ {int * node_revision; int * node_pool; int hint; int * fs; } ;
typedef TYPE_1__ dag_node_t ;
typedef int apr_pool_t ;


 int APR_SIZE_MAX ;
 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 TYPE_1__* apr_pcalloc (int *,int) ;
 int svn_fs_x__get_node_revision (int **,int *,int const*,int *,int *) ;

svn_error_t *
svn_fs_x__dag_get_node(dag_node_t **node,
                       svn_fs_t *fs,
                       const svn_fs_x__id_t *id,
                       apr_pool_t *result_pool,
                       apr_pool_t *scratch_pool)
{
  dag_node_t *new_node;
  svn_fs_x__noderev_t *noderev;


  new_node = apr_pcalloc(result_pool, sizeof(*new_node));
  new_node->fs = fs;
  new_node->hint = APR_SIZE_MAX;


  SVN_ERR(svn_fs_x__get_node_revision(&noderev, fs, id,
                                      result_pool, scratch_pool));
  new_node->node_pool = result_pool;
  new_node->node_revision = noderev;


  *node = new_node;
  return SVN_NO_ERROR;
}
