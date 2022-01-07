
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_fs_x__txn_id_t ;
typedef int svn_fs_t ;
typedef int svn_error_t ;
typedef int apr_pool_t ;


 int FALSE ;
 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int TRUE ;
 int purge_shared_txn (int *,int ,int *) ;
 int svn_fs_x__path_txn_dir (int *,int ,int *) ;
 int svn_fs_x__path_txn_proto_rev (int *,int ,int *) ;
 int svn_fs_x__path_txn_proto_rev_lock (int *,int ,int *) ;
 int svn_fs_x__txn_by_name (int *,char const*) ;
 int svn_io_remove_dir2 (int ,int ,int *,int *,int *) ;
 int svn_io_remove_file2 (int ,int ,int *) ;
 int * svn_pool_create (int *) ;
 int svn_pool_destroy (int *) ;

svn_error_t *
svn_fs_x__purge_txn(svn_fs_t *fs,
                    const char *txn_id_str,
                    apr_pool_t *scratch_pool)
{
  svn_fs_x__txn_id_t txn_id;




  apr_pool_t *subpool = svn_pool_create(scratch_pool);
  SVN_ERR(svn_fs_x__txn_by_name(&txn_id, txn_id_str));


  SVN_ERR(purge_shared_txn(fs, txn_id, subpool));

  SVN_ERR(svn_io_remove_dir2(svn_fs_x__path_txn_dir(fs, txn_id, subpool),
                             FALSE, ((void*)0), ((void*)0), subpool));




  SVN_ERR(svn_io_remove_file2(
                svn_fs_x__path_txn_proto_rev(fs, txn_id, subpool),
                TRUE, subpool));
  SVN_ERR(svn_io_remove_file2(
                svn_fs_x__path_txn_proto_rev_lock(fs, txn_id, subpool),
                TRUE, subpool));

  svn_pool_destroy(subpool);
  return SVN_NO_ERROR;
}
