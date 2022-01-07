
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int svn_error_t ;
typedef int svn_boolean_t ;
struct TYPE_6__ {int mergeinfo_count; int has_mergeinfo; } ;
typedef TYPE_1__ node_revision_t ;
struct TYPE_7__ {scalar_t__ kind; } ;
typedef TYPE_2__ dag_node_t ;


 int FALSE ;
 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int TRUE ;
 int get_node_revision (TYPE_1__**,TYPE_2__*) ;
 scalar_t__ svn_node_dir ;

svn_error_t *
svn_fs_fs__dag_has_descendants_with_mergeinfo(svn_boolean_t *do_they,
                                              dag_node_t *node)
{
  node_revision_t *noderev;

  if (node->kind != svn_node_dir)
    {
      *do_they = FALSE;
      return SVN_NO_ERROR;
    }

  SVN_ERR(get_node_revision(&noderev, node));
  if (noderev->mergeinfo_count > 1)
    *do_they = TRUE;
  else if (noderev->mergeinfo_count == 1 && !noderev->has_mergeinfo)
    *do_they = TRUE;
  else
    *do_they = FALSE;
  return SVN_NO_ERROR;
}
