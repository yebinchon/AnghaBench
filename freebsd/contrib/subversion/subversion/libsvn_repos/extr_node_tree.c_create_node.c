
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {char action; struct TYPE_5__* parent; int name; int kind; } ;
typedef TYPE_1__ svn_repos_node_t ;
typedef int apr_pool_t ;


 TYPE_1__* apr_pcalloc (int *,int) ;
 int apr_pstrdup (int *,char const*) ;
 int svn_node_unknown ;

__attribute__((used)) static svn_repos_node_t *
create_node(const char *name,
            svn_repos_node_t *parent,
            apr_pool_t *pool)
{
  svn_repos_node_t *node = apr_pcalloc(pool, sizeof(*node));
  node->action = 'R';
  node->kind = svn_node_unknown;
  node->name = apr_pstrdup(pool, name);
  node->parent = parent;
  return node;
}
