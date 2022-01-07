
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_wc__db_wcroot_t ;
typedef int svn_wc__db_t ;
typedef int svn_error_t ;
typedef int svn_boolean_t ;
typedef int apr_pool_t ;


 int FALSE ;
 int SVN_ERR (int ) ;
 int SVN_ERR_ASSERT (int ) ;
 int * SVN_NO_ERROR ;
 int SVN_WC__DB_WITH_TXN (int ,int *) ;
 int VERIFY_USABLE_WCROOT (int *) ;
 int check_replace_txn (int *,int *,int *,int *,char const*,int *) ;
 int svn_dirent_is_absolute (char const*) ;
 int svn_wc__db_wcroot_parse_local_abspath (int **,char const**,int *,char const*,int *,int *) ;

svn_error_t *
svn_wc__db_node_check_replace(svn_boolean_t *is_replace_root,
                              svn_boolean_t *base_replace,
                              svn_boolean_t *is_replace,
                              svn_wc__db_t *db,
                              const char *local_abspath,
                              apr_pool_t *scratch_pool)
{
  svn_wc__db_wcroot_t *wcroot;
  const char *local_relpath;

  SVN_ERR_ASSERT(svn_dirent_is_absolute(local_abspath));

  SVN_ERR(svn_wc__db_wcroot_parse_local_abspath(&wcroot, &local_relpath, db,
                                             local_abspath,
                                             scratch_pool, scratch_pool));
  VERIFY_USABLE_WCROOT(wcroot);

  if (is_replace_root)
    *is_replace_root = FALSE;
  if (base_replace)
    *base_replace = FALSE;
  if (is_replace)
    *is_replace = FALSE;

  if (local_relpath[0] == '\0')
    return SVN_NO_ERROR;

  SVN_WC__DB_WITH_TXN(
    check_replace_txn(is_replace_root, base_replace, is_replace,
                      wcroot, local_relpath, scratch_pool),
    wcroot);

  return SVN_NO_ERROR;
}
