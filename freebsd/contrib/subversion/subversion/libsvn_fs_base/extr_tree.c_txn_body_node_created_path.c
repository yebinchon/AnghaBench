
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int pool; } ;
typedef TYPE_1__ trail_t ;
typedef int svn_error_t ;
struct node_created_path_args {int * created_path; int path; int root; } ;
typedef int dag_node_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int get_dag (int **,int ,int ,TYPE_1__*,int ) ;
 int svn_fs_base__dag_get_created_path (int *) ;

__attribute__((used)) static svn_error_t *
txn_body_node_created_path(void *baton, trail_t *trail)
{
  struct node_created_path_args *args = baton;
  dag_node_t *node;

  SVN_ERR(get_dag(&node, args->root, args->path, trail, trail->pool));
  *args->created_path = svn_fs_base__dag_get_created_path(node);
  return SVN_NO_ERROR;
}
