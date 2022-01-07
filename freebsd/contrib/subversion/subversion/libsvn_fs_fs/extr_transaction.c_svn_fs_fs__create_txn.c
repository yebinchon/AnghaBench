
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_4__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


typedef int svn_revnum_t ;
struct TYPE_15__ {TYPE_3__* fsap_data; int * vtable; int base_rev; TYPE_2__* fs; int id; } ;
typedef TYPE_1__ svn_fs_txn_t ;
struct TYPE_16__ {TYPE_4__* fsap_data; } ;
typedef TYPE_2__ svn_fs_t ;
typedef int svn_fs_id_t ;
typedef int svn_error_t ;
struct TYPE_17__ {int txn_id; } ;
typedef TYPE_3__ fs_txn_data_t ;
struct TYPE_18__ {scalar_t__ format; } ;
typedef TYPE_4__ fs_fs_data_t ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 scalar_t__ SVN_FS_FS__MIN_TXN_CURRENT_FORMAT ;
 void* apr_pcalloc (int *,int) ;
 int create_new_txn_noderev_from_rev (TYPE_2__*,int *,int *,int *) ;
 int create_txn_dir (int *,int *,TYPE_2__*,int ,int *) ;
 int create_txn_dir_pre_1_5 (int *,int *,TYPE_2__*,int ,int *) ;
 int path_txn_changes (TYPE_2__*,int *,int *) ;
 int path_txn_next_ids (TYPE_2__*,int *,int *) ;
 int svn_fs_fs__path_txn_proto_rev (TYPE_2__*,int *,int *) ;
 int svn_fs_fs__path_txn_proto_rev_lock (TYPE_2__*,int *,int *) ;
 int svn_fs_fs__rev_get_root (int **,TYPE_2__*,int ,int *,int *) ;
 int * svn_io_file_create (int ,char*,int *) ;
 int svn_io_file_create_empty (int ,int *) ;
 int txn_vtable ;

svn_error_t *
svn_fs_fs__create_txn(svn_fs_txn_t **txn_p,
                      svn_fs_t *fs,
                      svn_revnum_t rev,
                      apr_pool_t *pool)
{
  fs_fs_data_t *ffd = fs->fsap_data;
  svn_fs_txn_t *txn;
  fs_txn_data_t *ftd;
  svn_fs_id_t *root_id;

  txn = apr_pcalloc(pool, sizeof(*txn));
  ftd = apr_pcalloc(pool, sizeof(*ftd));


  if (ffd->format >= SVN_FS_FS__MIN_TXN_CURRENT_FORMAT)
    SVN_ERR(create_txn_dir(&txn->id, &ftd->txn_id, fs, rev, pool));
  else
    SVN_ERR(create_txn_dir_pre_1_5(&txn->id, &ftd->txn_id, fs, rev, pool));

  txn->fs = fs;
  txn->base_rev = rev;

  txn->vtable = &txn_vtable;
  txn->fsap_data = ftd;
  *txn_p = txn;


  SVN_ERR(svn_fs_fs__rev_get_root(&root_id, fs, rev, pool, pool));
  SVN_ERR(create_new_txn_noderev_from_rev(fs, &ftd->txn_id, root_id, pool));


  SVN_ERR(svn_io_file_create_empty(
                    svn_fs_fs__path_txn_proto_rev(fs, &ftd->txn_id, pool),
                    pool));


  SVN_ERR(svn_io_file_create_empty(
               svn_fs_fs__path_txn_proto_rev_lock(fs, &ftd->txn_id, pool),
               pool));


  SVN_ERR(svn_io_file_create_empty(path_txn_changes(fs, &ftd->txn_id, pool),
                                   pool));


  return svn_io_file_create(path_txn_next_ids(fs, &ftd->txn_id, pool),
                            "0 0\n", pool);
}
