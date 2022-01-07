
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int len; int data; } ;
typedef TYPE_1__ svn_stringbuf_t ;
struct TYPE_8__ {int * copy_src_path; int copy_inherit; struct TYPE_8__* parent; int entry; int node; } ;
typedef TYPE_2__ svn_fs_x__dag_path_t ;
typedef int dag_node_t ;
typedef int apr_pool_t ;


 TYPE_2__* apr_pcalloc (int *,int) ;
 int apr_pstrmemdup (int *,int ,int ) ;
 int svn_fs_x__copy_id_inherit_unknown ;
 int svn_fs_x__dag_dup (int *,int *) ;

__attribute__((used)) static svn_fs_x__dag_path_t *
make_parent_path(dag_node_t *node,
                 const svn_stringbuf_t *entry,
                 svn_fs_x__dag_path_t *parent,
                 apr_pool_t *result_pool)
{
  svn_fs_x__dag_path_t *dag_path
    = apr_pcalloc(result_pool, sizeof(*dag_path));
  if (node)
    dag_path->node = svn_fs_x__dag_dup(node, result_pool);
  dag_path->entry = apr_pstrmemdup(result_pool, entry->data, entry->len);
  dag_path->parent = parent;
  dag_path->copy_inherit = svn_fs_x__copy_id_inherit_unknown;
  dag_path->copy_src_path = ((void*)0);
  return dag_path;
}
