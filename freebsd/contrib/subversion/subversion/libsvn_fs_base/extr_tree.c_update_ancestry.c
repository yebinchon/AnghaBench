
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int trail_t ;
typedef int svn_fs_t ;
typedef int svn_fs_id_t ;
typedef int svn_error_t ;
struct TYPE_4__ {int predecessor_count; int const* predecessor_id; } ;
typedef TYPE_1__ node_revision_t ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int SVN_ERR_FS_NOT_MUTABLE ;
 int _ (char*) ;
 scalar_t__ strcmp (int ,char const*) ;
 int * svn_error_createf (int ,int *,int ,char const*) ;
 int svn_fs_base__id_txn_id (int const*) ;
 int svn_fs_bdb__get_node_revision (TYPE_1__**,int *,int const*,int *,int *) ;
 int * svn_fs_bdb__put_node_revision (int *,int const*,TYPE_1__*,int *,int *) ;

__attribute__((used)) static svn_error_t *
update_ancestry(svn_fs_t *fs,
                const svn_fs_id_t *source_id,
                const svn_fs_id_t *target_id,
                const char *txn_id,
                const char *target_path,
                int source_pred_count,
                trail_t *trail,
                apr_pool_t *pool)
{
  node_revision_t *noderev;


  if (strcmp(svn_fs_base__id_txn_id(target_id), txn_id))
    return svn_error_createf
      (SVN_ERR_FS_NOT_MUTABLE, ((void*)0),
       _("Unexpected immutable node at '%s'"), target_path);
  SVN_ERR(svn_fs_bdb__get_node_revision(&noderev, fs, target_id,
                                        trail, pool));
  noderev->predecessor_id = source_id;
  noderev->predecessor_count = source_pred_count;
  if (noderev->predecessor_count != -1)
    noderev->predecessor_count++;
  return svn_fs_bdb__put_node_revision(fs, target_id, noderev, trail, pool);
}
