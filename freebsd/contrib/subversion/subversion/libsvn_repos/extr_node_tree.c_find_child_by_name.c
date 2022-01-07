
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* sibling; int name; struct TYPE_4__* child; } ;
typedef TYPE_1__ svn_repos_node_t ;


 int strcmp (int ,char const*) ;

__attribute__((used)) static svn_repos_node_t *
find_child_by_name(svn_repos_node_t *parent,
                   const char *name)
{
  svn_repos_node_t *tmp_node;


  if ((! parent) || (! parent->child))
    return ((void*)0);


  tmp_node = parent->child;
  while (1)
    {
      if (! strcmp(tmp_node->name, name))
        {
          return tmp_node;
        }
      else
        {
          if (tmp_node->sibling)
            tmp_node = tmp_node->sibling;
          else
            break;
        }
    }

  return ((void*)0);
}
