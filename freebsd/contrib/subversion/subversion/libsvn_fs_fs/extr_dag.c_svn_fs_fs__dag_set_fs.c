
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int svn_fs_t ;
struct TYPE_3__ {int * fs; } ;
typedef TYPE_1__ dag_node_t ;



void
svn_fs_fs__dag_set_fs(dag_node_t *node, svn_fs_t *fs)
{
  node->fs = fs;
}
