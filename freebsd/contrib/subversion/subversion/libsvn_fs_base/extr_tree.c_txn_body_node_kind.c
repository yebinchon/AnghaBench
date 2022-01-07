
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int pool; int fs; } ;
typedef TYPE_1__ trail_t ;
typedef int svn_error_t ;
struct node_kind_args {int kind; int id; } ;
typedef int dag_node_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int svn_fs_base__dag_get_node (int **,int ,int ,TYPE_1__*,int ) ;
 int svn_fs_base__dag_node_kind (int *) ;

__attribute__((used)) static svn_error_t *
txn_body_node_kind(void *baton, trail_t *trail)
{
  struct node_kind_args *args = baton;
  dag_node_t *node;

  SVN_ERR(svn_fs_base__dag_get_node(&node, trail->fs, args->id,
                                    trail, trail->pool));
  args->kind = svn_fs_base__dag_node_kind(node);

  return SVN_NO_ERROR;
}
