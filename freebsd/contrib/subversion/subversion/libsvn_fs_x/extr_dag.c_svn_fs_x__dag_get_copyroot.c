
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int svn_revnum_t ;
struct TYPE_5__ {TYPE_1__* node_revision; } ;
typedef TYPE_2__ dag_node_t ;
struct TYPE_4__ {char* copyroot_path; int copyroot_rev; } ;



void
svn_fs_x__dag_get_copyroot(svn_revnum_t *rev,
                           const char **path,
                           dag_node_t *node)
{
  *rev = node->node_revision->copyroot_rev;
  *path = node->node_revision->copyroot_path;
}
