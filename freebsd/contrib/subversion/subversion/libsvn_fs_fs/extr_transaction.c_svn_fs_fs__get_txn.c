
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int * copies; void* base_id; void* root_id; } ;
typedef TYPE_1__ transaction_t ;
typedef int svn_fs_t ;
typedef int svn_fs_id_t ;
typedef int svn_fs_fs__id_part_t ;
typedef int svn_error_t ;
struct TYPE_7__ {int predecessor_id; int id; } ;
typedef TYPE_2__ node_revision_t ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 TYPE_1__* apr_pcalloc (int *,int) ;
 int svn_fs_fs__get_node_revision (TYPE_2__**,int *,int *,int *,int *) ;
 void* svn_fs_fs__id_copy (int ,int *) ;
 int * svn_fs_fs__id_txn_create_root (int const*,int *) ;

svn_error_t *
svn_fs_fs__get_txn(transaction_t **txn_p,
                   svn_fs_t *fs,
                   const svn_fs_fs__id_part_t *txn_id,
                   apr_pool_t *pool)
{
  transaction_t *txn;
  node_revision_t *noderev;
  svn_fs_id_t *root_id;

  txn = apr_pcalloc(pool, sizeof(*txn));
  root_id = svn_fs_fs__id_txn_create_root(txn_id, pool);

  SVN_ERR(svn_fs_fs__get_node_revision(&noderev, fs, root_id, pool, pool));

  txn->root_id = svn_fs_fs__id_copy(noderev->id, pool);
  txn->base_id = svn_fs_fs__id_copy(noderev->predecessor_id, pool);
  txn->copies = ((void*)0);

  *txn_p = txn;

  return SVN_NO_ERROR;
}
