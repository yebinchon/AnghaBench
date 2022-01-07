
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int trail_t ;
typedef int svn_fs_t ;
typedef int svn_fs_id_t ;
typedef int svn_error_t ;
struct TYPE_6__ {int created_path; int kind; } ;
typedef TYPE_1__ node_revision_t ;
struct TYPE_7__ {int created_path; int kind; int id; int * fs; } ;
typedef TYPE_2__ dag_node_t ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 TYPE_2__* apr_pcalloc (int *,int) ;
 int svn_fs_base__id_copy (int const*,int *) ;
 int svn_fs_bdb__get_node_revision (TYPE_1__**,int *,int const*,int *,int *) ;

svn_error_t *
svn_fs_base__dag_get_node(dag_node_t **node,
                          svn_fs_t *fs,
                          const svn_fs_id_t *id,
                          trail_t *trail,
                          apr_pool_t *pool)
{
  dag_node_t *new_node;
  node_revision_t *noderev;


  new_node = apr_pcalloc(pool, sizeof(*new_node));
  new_node->fs = fs;
  new_node->id = svn_fs_base__id_copy(id, pool);


  SVN_ERR(svn_fs_bdb__get_node_revision(&noderev, fs, id, trail, pool));


  new_node->kind = noderev->kind;
  new_node->created_path = noderev->created_path;


  *node = new_node;
  return SVN_NO_ERROR;
}
