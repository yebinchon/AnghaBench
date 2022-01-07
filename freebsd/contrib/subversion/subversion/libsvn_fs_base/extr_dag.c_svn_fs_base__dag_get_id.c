
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int svn_fs_id_t ;
struct TYPE_3__ {int const* id; } ;
typedef TYPE_1__ dag_node_t ;



const svn_fs_id_t *
svn_fs_base__dag_get_id(dag_node_t *node)
{
  return node->id;
}
