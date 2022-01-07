
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int base_id; } ;
typedef TYPE_1__ transaction_t ;
typedef scalar_t__ svn_node_kind_t ;
struct TYPE_7__ {TYPE_3__* fsap_data; int * vtable; int base_rev; int * fs; int id; } ;
typedef TYPE_2__ svn_fs_txn_t ;
typedef int svn_fs_t ;
typedef int svn_fs_fs__id_part_t ;
typedef int svn_error_t ;
struct TYPE_8__ {int txn_id; } ;
typedef TYPE_3__ fs_txn_data_t ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int SVN_ERR_FS_NO_SUCH_TRANSACTION ;
 int * SVN_NO_ERROR ;
 int _ (char*) ;
 void* apr_pcalloc (int *,int) ;
 int apr_pstrdup (int *,char const*) ;
 int * svn_error_createf (int ,int *,int ,char const*) ;
 int svn_fs_fs__get_txn (TYPE_1__**,int *,int *,int *) ;
 int svn_fs_fs__id_rev (int ) ;
 int svn_fs_fs__id_txn_parse (int *,char const*) ;
 int svn_fs_fs__path_txn_dir (int *,int *,int *) ;
 int svn_io_check_path (int ,scalar_t__*,int *) ;
 scalar_t__ svn_node_dir ;
 int txn_vtable ;

svn_error_t *
svn_fs_fs__open_txn(svn_fs_txn_t **txn_p,
                    svn_fs_t *fs,
                    const char *name,
                    apr_pool_t *pool)
{
  svn_fs_txn_t *txn;
  fs_txn_data_t *ftd;
  svn_node_kind_t kind;
  transaction_t *local_txn;
  svn_fs_fs__id_part_t txn_id;

  SVN_ERR(svn_fs_fs__id_txn_parse(&txn_id, name));


  SVN_ERR(svn_io_check_path(svn_fs_fs__path_txn_dir(fs, &txn_id, pool),
                            &kind, pool));


  if (kind != svn_node_dir)
    return svn_error_createf(SVN_ERR_FS_NO_SUCH_TRANSACTION, ((void*)0),
                             _("No such transaction '%s'"),
                             name);

  txn = apr_pcalloc(pool, sizeof(*txn));
  ftd = apr_pcalloc(pool, sizeof(*ftd));
  ftd->txn_id = txn_id;


  txn->id = apr_pstrdup(pool, name);
  txn->fs = fs;

  SVN_ERR(svn_fs_fs__get_txn(&local_txn, fs, &txn_id, pool));

  txn->base_rev = svn_fs_fs__id_rev(local_txn->base_id);

  txn->vtable = &txn_vtable;
  txn->fsap_data = ftd;
  *txn_p = txn;

  return SVN_NO_ERROR;
}
