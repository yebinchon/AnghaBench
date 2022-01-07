
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_fs_txn_t ;
typedef int svn_fs_t ;
typedef int svn_error_t ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;
typedef int apr_array_header_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int svn_fs_open_txn (int **,int *,char const*,int *) ;
 int * svn_prop_hash_to_array (int *,int *) ;
 int svn_repos_fs_change_txn_props (int *,int const*,int *) ;

__attribute__((used)) static svn_error_t *
apply_revprops(svn_fs_t *fs,
               const char *txn_name,
               apr_hash_t *revprops,
               apr_pool_t *scratch_pool)
{
  svn_fs_txn_t *txn;
  const apr_array_header_t *revprops_array;



  SVN_ERR(svn_fs_open_txn(&txn, fs, txn_name, scratch_pool));


  revprops_array = svn_prop_hash_to_array(revprops, scratch_pool);
  SVN_ERR(svn_repos_fs_change_txn_props(txn, revprops_array, scratch_pool));



  return SVN_NO_ERROR;
}
