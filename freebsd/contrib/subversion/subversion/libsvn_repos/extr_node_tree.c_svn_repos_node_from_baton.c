
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_repos_node_t ;
struct edit_baton {int * node; } ;



svn_repos_node_t *
svn_repos_node_from_baton(void *edit_baton)
{
  struct edit_baton *eb = edit_baton;
  return eb->node;
}
