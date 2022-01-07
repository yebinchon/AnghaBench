
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ kind; int mergeinfo_count; int has_mergeinfo; } ;
typedef TYPE_1__ svn_fs_x__noderev_t ;
typedef int svn_boolean_t ;
struct TYPE_5__ {TYPE_1__* node_revision; } ;
typedef TYPE_2__ dag_node_t ;


 int FALSE ;
 int TRUE ;
 scalar_t__ svn_node_dir ;

svn_boolean_t
svn_fs_x__dag_has_descendants_with_mergeinfo(dag_node_t *node)
{
  svn_fs_x__noderev_t *noderev = node->node_revision;

  if (noderev->kind != svn_node_dir)
      return FALSE;

  if (noderev->mergeinfo_count > 1)
    return TRUE;
  else if (noderev->mergeinfo_count == 1 && !noderev->has_mergeinfo)
    return TRUE;

  return FALSE;
}
