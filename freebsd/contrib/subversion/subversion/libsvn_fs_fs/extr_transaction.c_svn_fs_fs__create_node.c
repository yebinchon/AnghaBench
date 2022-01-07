
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int svn_fs_t ;
typedef int svn_fs_id_t ;
typedef int svn_fs_fs__id_part_t ;
typedef int svn_error_t ;
struct TYPE_4__ {int const* id; } ;
typedef TYPE_1__ node_revision_t ;
typedef int apr_pool_t ;


 int FALSE ;
 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int get_new_txn_node_id (int *,int *,int const*,int *) ;
 int * svn_fs_fs__id_txn_create (int *,int const*,int const*,int *) ;
 int svn_fs_fs__put_node_revision (int *,int const*,TYPE_1__*,int ,int *) ;

svn_error_t *
svn_fs_fs__create_node(const svn_fs_id_t **id_p,
                       svn_fs_t *fs,
                       node_revision_t *noderev,
                       const svn_fs_fs__id_part_t *copy_id,
                       const svn_fs_fs__id_part_t *txn_id,
                       apr_pool_t *pool)
{
  svn_fs_fs__id_part_t node_id;
  const svn_fs_id_t *id;


  SVN_ERR(get_new_txn_node_id(&node_id, fs, txn_id, pool));

  id = svn_fs_fs__id_txn_create(&node_id, copy_id, txn_id, pool);

  noderev->id = id;

  SVN_ERR(svn_fs_fs__put_node_revision(fs, noderev->id, noderev, FALSE, pool));

  *id_p = id;

  return SVN_NO_ERROR;
}
