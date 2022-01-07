
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int svn_fs_x__txn_id_t ;
struct TYPE_5__ {int number; int change_set; } ;
struct TYPE_6__ {TYPE_1__ noderev_id; int copy_id; int node_id; } ;
typedef TYPE_2__ svn_fs_x__noderev_t ;
typedef int svn_fs_x__id_t ;
typedef int svn_fs_t ;
typedef int svn_error_t ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int allocate_item_index (int *,int *,int ,int *) ;
 int get_new_txn_node_id (int *,int *,int ,int *) ;
 int svn_fs_x__change_set_by_txn (int ) ;
 int svn_fs_x__put_node_revision (int *,TYPE_2__*,int *) ;

svn_error_t *
svn_fs_x__create_node(svn_fs_t *fs,
                      svn_fs_x__noderev_t *noderev,
                      const svn_fs_x__id_t *copy_id,
                      svn_fs_x__txn_id_t txn_id,
                      apr_pool_t *scratch_pool)
{

  SVN_ERR(get_new_txn_node_id(&noderev->node_id, fs, txn_id, scratch_pool));


  noderev->copy_id = *copy_id;


  noderev->noderev_id.change_set = svn_fs_x__change_set_by_txn(txn_id);
  SVN_ERR(allocate_item_index(&noderev->noderev_id.number, fs, txn_id,
                              scratch_pool));

  SVN_ERR(svn_fs_x__put_node_revision(fs, noderev, scratch_pool));

  return SVN_NO_ERROR;
}
