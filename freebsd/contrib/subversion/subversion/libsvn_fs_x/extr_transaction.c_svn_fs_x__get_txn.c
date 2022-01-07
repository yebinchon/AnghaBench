
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int svn_fs_x__txn_id_t ;
struct TYPE_8__ {int * copies; int base_rev; } ;
typedef TYPE_2__ svn_fs_x__transaction_t ;
struct TYPE_7__ {int change_set; } ;
struct TYPE_9__ {TYPE_1__ predecessor_id; } ;
typedef TYPE_3__ svn_fs_x__noderev_t ;
typedef int svn_fs_x__id_t ;
typedef int svn_fs_t ;
typedef int svn_error_t ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 TYPE_2__* apr_pcalloc (int *,int) ;
 int svn_fs_x__get_node_revision (TYPE_3__**,int *,int *,int *,int *) ;
 int svn_fs_x__get_revnum (int ) ;
 int svn_fs_x__init_txn_root (int *,int ) ;

svn_error_t *
svn_fs_x__get_txn(svn_fs_x__transaction_t **txn_p,
                  svn_fs_t *fs,
                  svn_fs_x__txn_id_t txn_id,
                  apr_pool_t *pool)
{
  svn_fs_x__transaction_t *txn;
  svn_fs_x__noderev_t *noderev;
  svn_fs_x__id_t root_id;

  txn = apr_pcalloc(pool, sizeof(*txn));
  svn_fs_x__init_txn_root(&root_id, txn_id);

  SVN_ERR(svn_fs_x__get_node_revision(&noderev, fs, &root_id, pool, pool));

  txn->base_rev = svn_fs_x__get_revnum(noderev->predecessor_id.change_set);
  txn->copies = ((void*)0);

  *txn_p = txn;

  return SVN_NO_ERROR;
}
