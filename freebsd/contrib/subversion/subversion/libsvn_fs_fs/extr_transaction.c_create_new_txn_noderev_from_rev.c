
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int svn_fs_t ;
typedef int svn_fs_id_t ;
typedef int svn_fs_fs__id_part_t ;
typedef int svn_error_t ;
struct TYPE_4__ {int id; int copyfrom_rev; int * copyfrom_path; int predecessor_count; int predecessor_id; } ;
typedef TYPE_1__ node_revision_t ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int SVN_ERR_FS_CORRUPT ;
 int SVN_INVALID_REVNUM ;
 int TRUE ;
 int _ (char*) ;
 int * svn_error_create (int ,int *,int ) ;
 int svn_fs_fs__get_node_revision (TYPE_1__**,int *,int *,int *,int *) ;
 int * svn_fs_fs__id_copy_id (int ) ;
 scalar_t__ svn_fs_fs__id_is_txn (int ) ;
 int * svn_fs_fs__id_node_id (int ) ;
 int svn_fs_fs__id_txn_create (int const*,int const*,int const*,int *) ;
 int * svn_fs_fs__put_node_revision (int *,int ,TYPE_1__*,int ,int *) ;

__attribute__((used)) static svn_error_t *
create_new_txn_noderev_from_rev(svn_fs_t *fs,
                                const svn_fs_fs__id_part_t *txn_id,
                                svn_fs_id_t *src,
                                apr_pool_t *pool)
{
  node_revision_t *noderev;
  const svn_fs_fs__id_part_t *node_id, *copy_id;

  SVN_ERR(svn_fs_fs__get_node_revision(&noderev, fs, src, pool, pool));

  if (svn_fs_fs__id_is_txn(noderev->id))
    return svn_error_create(SVN_ERR_FS_CORRUPT, ((void*)0),
                            _("Copying from transactions not allowed"));

  noderev->predecessor_id = noderev->id;
  noderev->predecessor_count++;
  noderev->copyfrom_path = ((void*)0);
  noderev->copyfrom_rev = SVN_INVALID_REVNUM;



  node_id = svn_fs_fs__id_node_id(noderev->id);
  copy_id = svn_fs_fs__id_copy_id(noderev->id);
  noderev->id = svn_fs_fs__id_txn_create(node_id, copy_id, txn_id, pool);

  return svn_fs_fs__put_node_revision(fs, noderev->id, noderev, TRUE, pool);
}
