
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int svn_error_t ;
struct TYPE_3__ {int node_revision; int fs; } ;
typedef TYPE_1__ dag_node_t ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int svn_fs_x__get_proplist (int **,int ,int ,int *,int *) ;

svn_error_t *
svn_fs_x__dag_get_proplist(apr_hash_t **proplist_p,
                           dag_node_t *node,
                           apr_pool_t *result_pool,
                           apr_pool_t *scratch_pool)
{
  SVN_ERR(svn_fs_x__get_proplist(proplist_p, node->fs, node->node_revision,
                                 result_pool, scratch_pool));
  return SVN_NO_ERROR;
}
