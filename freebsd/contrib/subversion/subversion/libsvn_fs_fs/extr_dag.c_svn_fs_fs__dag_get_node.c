
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int svn_fs_t ;
typedef int svn_fs_id_t ;
typedef int svn_error_t ;
struct TYPE_7__ {int * predecessor_id; scalar_t__ is_fresh_txn_root; int created_path; int kind; } ;
typedef TYPE_1__ node_revision_t ;
struct TYPE_8__ {int * fresh_root_predecessor_id; int created_path; int kind; int * node_pool; int id; int * fs; } ;
typedef TYPE_2__ dag_node_t ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 TYPE_2__* apr_pcalloc (int *,int) ;
 int apr_pstrdup (int *,int ) ;
 int get_node_revision (TYPE_1__**,TYPE_2__*) ;
 int svn_fs_fs__id_copy (int const*,int *) ;

svn_error_t *
svn_fs_fs__dag_get_node(dag_node_t **node,
                        svn_fs_t *fs,
                        const svn_fs_id_t *id,
                        apr_pool_t *pool)
{
  dag_node_t *new_node;
  node_revision_t *noderev;


  new_node = apr_pcalloc(pool, sizeof(*new_node));
  new_node->fs = fs;
  new_node->id = svn_fs_fs__id_copy(id, pool);


  new_node->node_pool = pool;
  SVN_ERR(get_node_revision(&noderev, new_node));


  new_node->kind = noderev->kind;
  new_node->created_path = apr_pstrdup(pool, noderev->created_path);

  if (noderev->is_fresh_txn_root)
    new_node->fresh_root_predecessor_id = noderev->predecessor_id;
  else
    new_node->fresh_root_predecessor_id = ((void*)0);


  *node = new_node;
  return SVN_NO_ERROR;
}
