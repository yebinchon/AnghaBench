
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int pool; } ;
typedef TYPE_1__ trail_t ;
typedef int svn_error_t ;
struct things_changed_args {int* changed_p; int strict; int path2; int root2; int path1; int root1; } ;
typedef int dag_node_t ;
typedef int apr_hash_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int get_dag (int **,int ,int ,TYPE_1__*,int ) ;
 int svn_fs__prop_lists_equal (int *,int *,int ) ;
 int svn_fs_base__dag_get_proplist (int **,int *,TYPE_1__*,int ) ;
 int svn_fs_base__things_different (int*,int *,int *,int *,TYPE_1__*,int ) ;

__attribute__((used)) static svn_error_t *
txn_body_props_changed(void *baton, trail_t *trail)
{
  struct things_changed_args *args = baton;
  dag_node_t *node1, *node2;
  apr_hash_t *proplist1, *proplist2;

  SVN_ERR(get_dag(&node1, args->root1, args->path1, trail, trail->pool));
  SVN_ERR(get_dag(&node2, args->root2, args->path2, trail, trail->pool));
  SVN_ERR(svn_fs_base__things_different(args->changed_p, ((void*)0),
                                        node1, node2, trail, trail->pool));


  if (!args->strict || !*args->changed_p)
    return SVN_NO_ERROR;


  SVN_ERR(svn_fs_base__dag_get_proplist(&proplist1, node1,
                                        trail, trail->pool));
  SVN_ERR(svn_fs_base__dag_get_proplist(&proplist2, node2,
                                        trail, trail->pool));

  *args->changed_p = !svn_fs__prop_lists_equal(proplist1, proplist2,
                                               trail->pool);
  return SVN_NO_ERROR;
}
