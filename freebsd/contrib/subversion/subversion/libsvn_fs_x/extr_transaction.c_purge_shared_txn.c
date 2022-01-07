
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_fs_x__txn_id_t ;
typedef int svn_fs_t ;
typedef int svn_error_t ;
typedef int apr_pool_t ;


 int purge_shared_txn_body ;
 int * with_txnlist_lock (int *,int ,int *,int *) ;

__attribute__((used)) static svn_error_t *
purge_shared_txn(svn_fs_t *fs,
                 svn_fs_x__txn_id_t txn_id,
                 apr_pool_t *scratch_pool)
{
  return with_txnlist_lock(fs, purge_shared_txn_body, &txn_id, scratch_pool);
}
