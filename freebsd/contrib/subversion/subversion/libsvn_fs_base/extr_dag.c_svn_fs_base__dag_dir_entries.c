
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int trail_t ;
typedef int svn_error_t ;
typedef int node_revision_t ;
struct TYPE_3__ {int fs; int id; } ;
typedef TYPE_1__ dag_node_t ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;


 int SVN_ERR (int ) ;
 int * get_dir_entries (int **,int ,int *,int *,int *) ;
 int svn_fs_bdb__get_node_revision (int **,int ,int ,int *,int *) ;

svn_error_t *
svn_fs_base__dag_dir_entries(apr_hash_t **entries,
                             dag_node_t *node,
                             trail_t *trail,
                             apr_pool_t *pool)
{
  node_revision_t *noderev;
  SVN_ERR(svn_fs_bdb__get_node_revision(&noderev, node->fs, node->id,
                                        trail, pool));
  return get_dir_entries(entries, node->fs, noderev, trail, pool);
}
