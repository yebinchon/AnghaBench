
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int created_path; int kind; int id; int fs; } ;
typedef TYPE_1__ dag_node_t ;
typedef int apr_pool_t ;


 TYPE_1__* apr_pcalloc (int *,int) ;
 int apr_pstrdup (int *,int ) ;
 int svn_fs_base__id_copy (int ,int *) ;

dag_node_t *
svn_fs_base__dag_dup(const dag_node_t *node,
                     apr_pool_t *pool)
{

  dag_node_t *new_node = apr_pcalloc(pool, sizeof(*new_node));

  new_node->fs = node->fs;
  new_node->id = svn_fs_base__id_copy(node->id, pool);
  new_node->kind = node->kind;
  new_node->created_path = apr_pstrdup(pool, node->created_path);
  return new_node;
}
