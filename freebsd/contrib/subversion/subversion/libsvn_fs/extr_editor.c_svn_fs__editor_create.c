
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_revnum_t ;
typedef int svn_fs_txn_t ;
typedef int svn_fs_t ;
typedef int svn_error_t ;
typedef int svn_editor_t ;
typedef int svn_cancel_func_t ;
typedef int apr_uint32_t ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int make_editor (int **,int *,int ,void*,int *,int *) ;
 int * svn_error_trace (int ) ;
 int svn_fs_begin_txn2 (int **,int *,int ,int ,int *) ;
 int svn_fs_txn_name (char const**,int *,int *) ;
 int svn_fs_youngest_rev (int *,int *,int *) ;

svn_error_t *
svn_fs__editor_create(svn_editor_t **editor,
                      const char **txn_name,
                      svn_fs_t *fs,
                      apr_uint32_t flags,
                      svn_cancel_func_t cancel_func,
                      void *cancel_baton,
                      apr_pool_t *result_pool,
                      apr_pool_t *scratch_pool)
{
  svn_revnum_t revision;
  svn_fs_txn_t *txn;

  SVN_ERR(svn_fs_youngest_rev(&revision, fs, scratch_pool));
  SVN_ERR(svn_fs_begin_txn2(&txn, fs, revision, flags, result_pool));
  SVN_ERR(svn_fs_txn_name(txn_name, txn, result_pool));
  return svn_error_trace(make_editor(editor, txn,
                                     cancel_func, cancel_baton,
                                     result_pool, scratch_pool));
}
