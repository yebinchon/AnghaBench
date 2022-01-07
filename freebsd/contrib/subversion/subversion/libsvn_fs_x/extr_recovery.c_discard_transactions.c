
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int pool; struct TYPE_8__* next; } ;
typedef TYPE_1__ svn_fs_x__shared_txn_data_t ;
struct TYPE_9__ {TYPE_1__* txns; } ;
typedef TYPE_2__ svn_fs_x__shared_data_t ;
struct TYPE_10__ {TYPE_2__* shared; } ;
typedef TYPE_3__ svn_fs_x__data_t ;
struct TYPE_11__ {TYPE_3__* fsap_data; } ;
typedef TYPE_4__ svn_fs_t ;
typedef int svn_error_t ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int clear_directory (int ,int *) ;
 int svn_fs_x__path_txn_proto_revs (TYPE_4__*,int *) ;
 int svn_fs_x__path_txns_dir (TYPE_4__*,int *) ;
 int svn_pool_destroy (int ) ;

__attribute__((used)) static svn_error_t *
discard_transactions(svn_fs_t *fs,
                     apr_pool_t *scratch_pool)
{
  svn_fs_x__data_t *ffd = fs->fsap_data;
  svn_fs_x__shared_data_t *ffsd = ffd->shared;





  while (ffsd->txns)
    {
      svn_fs_x__shared_txn_data_t *txn = ffsd->txns;
      ffsd->txns = txn->next;

      svn_pool_destroy(txn->pool);
    }


  SVN_ERR(clear_directory(svn_fs_x__path_txns_dir(fs, scratch_pool),
                          scratch_pool));
  SVN_ERR(clear_directory(svn_fs_x__path_txn_proto_revs(fs, scratch_pool),
                          scratch_pool));

  return SVN_NO_ERROR;
}
