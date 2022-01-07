
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int pool; } ;
typedef TYPE_1__ trail_t ;
typedef int svn_error_t ;
struct node_prop_args {int propname; int ** value_p; int path; int root; } ;
typedef int dag_node_t ;
typedef int apr_hash_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int get_dag (int **,int ,int ,TYPE_1__*,int ) ;
 int svn_fs_base__dag_get_proplist (int **,int *,TYPE_1__*,int ) ;
 int * svn_hash_gets (int *,int ) ;

__attribute__((used)) static svn_error_t *
txn_body_node_prop(void *baton,
                   trail_t *trail)
{
  struct node_prop_args *args = baton;
  dag_node_t *node;
  apr_hash_t *proplist;

  SVN_ERR(get_dag(&node, args->root, args->path, trail, trail->pool));
  SVN_ERR(svn_fs_base__dag_get_proplist(&proplist, node,
                                        trail, trail->pool));
  *(args->value_p) = ((void*)0);
  if (proplist)
    *(args->value_p) = svn_hash_gets(proplist, args->propname);
  return SVN_NO_ERROR;
}
