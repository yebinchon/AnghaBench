
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int svn_error_t ;
struct TYPE_9__ {int predecessor_count; int predecessor_id; } ;
typedef TYPE_1__ node_revision_t ;
struct TYPE_10__ {int id; int fs; } ;
typedef TYPE_2__ dag_node_t ;
typedef int apr_pool_t ;


 int FALSE ;
 int SVN_ERR (int ) ;
 int SVN_ERR_FS_NOT_MUTABLE ;
 int _ (char*) ;
 int get_node_revision (TYPE_1__**,TYPE_2__*) ;
 int * svn_error_createf (int ,int *,int ) ;
 int svn_fs_fs__dag_check_mutable (TYPE_2__*) ;
 int * svn_fs_fs__put_node_revision (int ,int ,TYPE_1__*,int ,int *) ;

svn_error_t *
svn_fs_fs__dag_update_ancestry(dag_node_t *target,
                               dag_node_t *source,
                               apr_pool_t *pool)
{
  node_revision_t *source_noderev, *target_noderev;

  if (! svn_fs_fs__dag_check_mutable(target))
    return svn_error_createf
      (SVN_ERR_FS_NOT_MUTABLE, ((void*)0),
       _("Attempted to update ancestry of non-mutable node"));

  SVN_ERR(get_node_revision(&source_noderev, source));
  SVN_ERR(get_node_revision(&target_noderev, target));

  target_noderev->predecessor_id = source->id;
  target_noderev->predecessor_count = source_noderev->predecessor_count;
  target_noderev->predecessor_count++;

  return svn_fs_fs__put_node_revision(target->fs, target->id, target_noderev,
                                      FALSE, pool);
}
