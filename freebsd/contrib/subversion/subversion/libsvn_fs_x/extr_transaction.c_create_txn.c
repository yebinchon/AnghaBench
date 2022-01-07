
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int svn_revnum_t ;
typedef int svn_fs_x__id_t ;
struct TYPE_4__ {TYPE_2__* fsap_data; int * vtable; int base_rev; int * fs; int id; } ;
typedef TYPE_1__ svn_fs_txn_t ;
typedef int svn_fs_t ;
typedef int svn_error_t ;
struct TYPE_5__ {int txn_id; } ;
typedef TYPE_2__ fs_txn_data_t ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 void* apr_pcalloc (int *,int) ;
 int create_new_txn_noderev_from_rev (int *,int ,int *,int *) ;
 int create_txn_dir (int *,int *,int *,int *,int *) ;
 int svn_fs_x__ensure_revision_exists (int ,int *,int *) ;
 int svn_fs_x__init_rev_root (int *,int ) ;
 int svn_fs_x__path_txn_changes (int *,int ,int *) ;
 int svn_fs_x__path_txn_next_ids (int *,int ,int *) ;
 int svn_fs_x__path_txn_proto_rev (int *,int ,int *) ;
 int svn_fs_x__path_txn_proto_rev_lock (int *,int ,int *) ;
 int svn_io_file_create (int ,char*,int *) ;
 int svn_io_file_create_empty (int ,int *) ;
 int txn_vtable ;

__attribute__((used)) static svn_error_t *
create_txn(svn_fs_txn_t **txn_p,
           svn_fs_t *fs,
           svn_revnum_t rev,
           apr_pool_t *result_pool,
           apr_pool_t *scratch_pool)
{
  svn_fs_txn_t *txn;
  fs_txn_data_t *ftd;
  svn_fs_x__id_t root_id;

  txn = apr_pcalloc(result_pool, sizeof(*txn));
  ftd = apr_pcalloc(result_pool, sizeof(*ftd));


  SVN_ERR(svn_fs_x__ensure_revision_exists(rev, fs, scratch_pool));


  SVN_ERR(create_txn_dir(&txn->id, &ftd->txn_id, fs, result_pool,
                         scratch_pool));

  txn->fs = fs;
  txn->base_rev = rev;

  txn->vtable = &txn_vtable;
  txn->fsap_data = ftd;
  *txn_p = txn;


  svn_fs_x__init_rev_root(&root_id, rev);
  SVN_ERR(create_new_txn_noderev_from_rev(fs, ftd->txn_id, &root_id,
                                          scratch_pool));


  SVN_ERR(svn_io_file_create_empty(
              svn_fs_x__path_txn_proto_rev(fs, ftd->txn_id, scratch_pool),
              scratch_pool));


  SVN_ERR(svn_io_file_create_empty(
              svn_fs_x__path_txn_proto_rev_lock(fs, ftd->txn_id, scratch_pool),
              scratch_pool));


  SVN_ERR(svn_io_file_create_empty(
              svn_fs_x__path_txn_changes(fs, ftd->txn_id, scratch_pool),
              scratch_pool));


  SVN_ERR(svn_io_file_create(
              svn_fs_x__path_txn_next_ids(fs, ftd->txn_id, scratch_pool),
              "0 0\n", scratch_pool));

  return SVN_NO_ERROR;
}
