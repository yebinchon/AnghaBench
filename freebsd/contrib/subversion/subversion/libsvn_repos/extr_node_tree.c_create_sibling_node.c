
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int parent; struct TYPE_5__* sibling; } ;
typedef TYPE_1__ svn_repos_node_t ;
typedef int apr_pool_t ;


 TYPE_1__* create_node (char const*,int ,int *) ;

__attribute__((used)) static svn_repos_node_t *
create_sibling_node(svn_repos_node_t *elder,
                    const char *name,
                    apr_pool_t *pool)
{
  svn_repos_node_t *tmp_node;


  if (! elder)
    return ((void*)0);


  tmp_node = elder;
  while (tmp_node->sibling)
    tmp_node = tmp_node->sibling;


  return (tmp_node->sibling = create_node(name, elder->parent, pool));
}
