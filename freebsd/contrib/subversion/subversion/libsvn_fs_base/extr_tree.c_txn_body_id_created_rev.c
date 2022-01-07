
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int pool; int fs; } ;
typedef TYPE_1__ trail_t ;
typedef int svn_error_t ;
struct id_created_rev_args {int revision; int id; } ;
typedef int dag_node_t ;


 int SVN_ERR (int ) ;
 int svn_fs_base__dag_get_node (int **,int ,int ,TYPE_1__*,int ) ;
 int * svn_fs_base__dag_get_revision (int *,int *,TYPE_1__*,int ) ;

__attribute__((used)) static svn_error_t *
txn_body_id_created_rev(void *baton, trail_t *trail)
{
  struct id_created_rev_args *args = baton;
  dag_node_t *node;

  SVN_ERR(svn_fs_base__dag_get_node(&node, trail->fs, args->id,
                                    trail, trail->pool));
  return svn_fs_base__dag_get_revision(&(args->revision), node,
                                       trail, trail->pool);
}
