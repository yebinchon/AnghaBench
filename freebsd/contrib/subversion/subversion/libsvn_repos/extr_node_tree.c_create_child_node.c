
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {struct TYPE_8__* child; } ;
typedef TYPE_1__ svn_repos_node_t ;
typedef int apr_pool_t ;


 TYPE_1__* create_node (char const*,TYPE_1__*,int *) ;
 TYPE_1__* create_sibling_node (TYPE_1__*,char const*,int *) ;

__attribute__((used)) static svn_repos_node_t *
create_child_node(svn_repos_node_t *parent,
                  const char *name,
                  apr_pool_t *pool)
{

  if (! parent)
    return ((void*)0);


  if (! parent->child)
    return (parent->child = create_node(name, parent, pool));



  return create_sibling_node(parent->child, name, pool);
}
