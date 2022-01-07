
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int trail_t ;
typedef int svn_fs_t ;
typedef int svn_fs_id_t ;
typedef int svn_error_t ;
struct TYPE_3__ {int * predecessor_id; scalar_t__ edit_key; scalar_t__ data_key; scalar_t__ prop_key; } ;
typedef TYPE_1__ node_revision_t ;
typedef int dag_node_t ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int SVN_ERR_FS_NOT_MUTABLE ;
 int _ (char*) ;
 int * svn_error_createf (int ,int *,int ) ;
 int svn_fs_base__dag_check_mutable (int *,char const*) ;
 int svn_fs_base__dag_get_node (int **,int *,int const*,int *,int *) ;
 int * svn_fs_base__delete_node_revision (int *,int const*,int ,int *,int *) ;
 int svn_fs_base__delete_rep_if_mutable (int *,scalar_t__,char const*,int *,int *) ;
 int svn_fs_bdb__get_node_revision (TYPE_1__**,int *,int const*,int *,int *) ;

svn_error_t *
svn_fs_base__dag_remove_node(svn_fs_t *fs,
                             const svn_fs_id_t *id,
                             const char *txn_id,
                             trail_t *trail,
                             apr_pool_t *pool)
{
  dag_node_t *node;
  node_revision_t *noderev;


  SVN_ERR(svn_fs_base__dag_get_node(&node, fs, id, trail, pool));


  if (! svn_fs_base__dag_check_mutable(node, txn_id))
    return svn_error_createf(SVN_ERR_FS_NOT_MUTABLE, ((void*)0),
                             _("Attempted removal of immutable node"));


  SVN_ERR(svn_fs_bdb__get_node_revision(&noderev, fs, id, trail, pool));


  if (noderev->prop_key)
    SVN_ERR(svn_fs_base__delete_rep_if_mutable(fs, noderev->prop_key,
                                               txn_id, trail, pool));


  if (noderev->data_key)
    SVN_ERR(svn_fs_base__delete_rep_if_mutable(fs, noderev->data_key,
                                               txn_id, trail, pool));


  if (noderev->edit_key)
    SVN_ERR(svn_fs_base__delete_rep_if_mutable(fs, noderev->edit_key,
                                               txn_id, trail, pool));


  return svn_fs_base__delete_node_revision(fs, id,
                                           noderev->predecessor_id == ((void*)0),
                                           trail, pool);
}
