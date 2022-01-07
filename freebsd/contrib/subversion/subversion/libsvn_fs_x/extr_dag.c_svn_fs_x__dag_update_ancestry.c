
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int predecessor_count; int noderev_id; int predecessor_id; } ;
typedef TYPE_1__ svn_fs_x__noderev_t ;
typedef int svn_error_t ;
struct TYPE_8__ {TYPE_1__* node_revision; } ;
typedef TYPE_2__ dag_node_t ;
typedef int apr_pool_t ;


 int SVN_ERR_FS_NOT_MUTABLE ;
 int _ (char*) ;
 int * noderev_changed (TYPE_2__*,int *) ;
 int * svn_error_createf (int ,int *,int ) ;
 int svn_fs_x__dag_check_mutable (TYPE_2__*) ;

svn_error_t *
svn_fs_x__dag_update_ancestry(dag_node_t *target,
                              dag_node_t *source,
                              apr_pool_t *scratch_pool)
{
  svn_fs_x__noderev_t *source_noderev = source->node_revision;
  svn_fs_x__noderev_t *target_noderev = target->node_revision;

  if (! svn_fs_x__dag_check_mutable(target))
    return svn_error_createf
      (SVN_ERR_FS_NOT_MUTABLE, ((void*)0),
       _("Attempted to update ancestry of non-mutable node"));

  target_noderev->predecessor_id = source_noderev->noderev_id;
  target_noderev->predecessor_count = source_noderev->predecessor_count;
  target_noderev->predecessor_count++;

  return noderev_changed(target, scratch_pool);
}
