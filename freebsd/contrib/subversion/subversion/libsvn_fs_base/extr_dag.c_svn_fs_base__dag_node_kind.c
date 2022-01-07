
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int svn_node_kind_t ;
struct TYPE_3__ {int kind; } ;
typedef TYPE_1__ dag_node_t ;



svn_node_kind_t svn_fs_base__dag_node_kind(dag_node_t *node)
{
  return node->kind;
}
