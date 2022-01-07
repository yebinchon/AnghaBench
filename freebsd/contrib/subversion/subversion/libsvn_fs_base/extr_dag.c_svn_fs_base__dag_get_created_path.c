
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char const* created_path; } ;
typedef TYPE_1__ dag_node_t ;



const char *
svn_fs_base__dag_get_created_path(dag_node_t *node)
{
  return node->created_path;
}
