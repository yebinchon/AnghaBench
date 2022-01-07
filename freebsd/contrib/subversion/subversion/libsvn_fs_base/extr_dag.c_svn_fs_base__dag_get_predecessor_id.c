
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int trail_t ;
typedef int svn_fs_id_t ;
typedef int svn_error_t ;
struct TYPE_5__ {int * predecessor_id; } ;
typedef TYPE_1__ node_revision_t ;
struct TYPE_6__ {int id; int fs; } ;
typedef TYPE_2__ dag_node_t ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int svn_fs_bdb__get_node_revision (TYPE_1__**,int ,int ,int *,int *) ;

svn_error_t *
svn_fs_base__dag_get_predecessor_id(const svn_fs_id_t **id_p,
                                    dag_node_t *node,
                                    trail_t *trail,
                                    apr_pool_t *pool)
{
  node_revision_t *noderev;

  SVN_ERR(svn_fs_bdb__get_node_revision(&noderev, node->fs, node->id,
                                        trail, pool));
  *id_p = noderev->predecessor_id;
  return SVN_NO_ERROR;
}
