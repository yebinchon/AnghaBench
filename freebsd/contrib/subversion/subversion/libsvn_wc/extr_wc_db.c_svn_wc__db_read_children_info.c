
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_wc__db_wcroot_t ;
typedef int svn_wc__db_t ;
typedef int svn_error_t ;
typedef int svn_boolean_t ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;


 int SVN_ERR (int ) ;
 int SVN_ERR_ASSERT (int ) ;
 int * SVN_NO_ERROR ;
 int SVN_WC__DB_WITH_TXN (int ,int *) ;
 int VERIFY_USABLE_WCROOT (int *) ;
 int * apr_hash_make (int *) ;
 int read_children_info (int *,char const*,int *,int *,int ,int *,int *) ;
 int svn_dirent_is_absolute (char const*) ;
 int svn_wc__db_wcroot_parse_local_abspath (int **,char const**,int *,char const*,int *,int *) ;

svn_error_t *
svn_wc__db_read_children_info(apr_hash_t **nodes,
                              apr_hash_t **conflicts,
                              svn_wc__db_t *db,
                              const char *dir_abspath,
                              svn_boolean_t base_tree_only,
                              apr_pool_t *result_pool,
                              apr_pool_t *scratch_pool)
{
  svn_wc__db_wcroot_t *wcroot;
  const char *dir_relpath;

  *conflicts = apr_hash_make(result_pool);
  *nodes = apr_hash_make(result_pool);
  SVN_ERR_ASSERT(svn_dirent_is_absolute(dir_abspath));

  SVN_ERR(svn_wc__db_wcroot_parse_local_abspath(&wcroot, &dir_relpath, db,
                                                dir_abspath,
                                                scratch_pool, scratch_pool));
  VERIFY_USABLE_WCROOT(wcroot);

  SVN_WC__DB_WITH_TXN(
    read_children_info(wcroot, dir_relpath, *conflicts, *nodes,
                       base_tree_only, result_pool, scratch_pool),
    wcroot);

  return SVN_NO_ERROR;
}
