
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_error_t ;
typedef int svn_delta_editor_t ;
typedef int svn_branch__txn_t ;
typedef int svn_branch__compat_shim_connector_t ;
typedef int svn_branch__compat_fetch_func_t ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int branching_txn ;
 int svn_branch__compat_delta_from_txn_for_commit (int const**,void**,int *,char const*,char const*,int ,void*,int *,int *,int *) ;
 int svn_branch__compat_txn_from_delta_for_commit (int **,int **,int const*,void*,int ,char const*,int ,void*,int *,int *,int *,int *) ;

svn_error_t *
svn_branch__compat_insert_shims(
                        const svn_delta_editor_t **new_deditor,
                        void **new_dedit_baton,
                        const svn_delta_editor_t *old_deditor,
                        void *old_dedit_baton,
                        const char *repos_root,
                        const char *base_relpath,
                        svn_branch__compat_fetch_func_t fetch_func,
                        void *fetch_baton,
                        apr_pool_t *result_pool,
                        apr_pool_t *scratch_pool)
{
  *new_deditor = old_deditor;
  *new_dedit_baton = old_dedit_baton;

  return SVN_NO_ERROR;
}
