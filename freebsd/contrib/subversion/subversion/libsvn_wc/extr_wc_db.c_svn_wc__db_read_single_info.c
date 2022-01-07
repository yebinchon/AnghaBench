
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_wc__db_wcroot_t ;
typedef int svn_wc__db_t ;
typedef int svn_error_t ;
typedef int svn_boolean_t ;
struct svn_wc__db_info_t {int dummy; } ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int SVN_ERR_ASSERT (int ) ;
 int * SVN_NO_ERROR ;
 int SVN_WC__DB_WITH_TXN (int ,int *) ;
 int VERIFY_USABLE_WCROOT (int *) ;
 int read_single_info (struct svn_wc__db_info_t const**,int *,char const*,int ,int *,int *) ;
 int svn_dirent_is_absolute (char const*) ;
 int svn_wc__db_wcroot_parse_local_abspath (int **,char const**,int *,char const*,int *,int *) ;

svn_error_t *
svn_wc__db_read_single_info(const struct svn_wc__db_info_t **info,
                            svn_wc__db_t *db,
                            const char *local_abspath,
                            svn_boolean_t base_tree_only,
                            apr_pool_t *result_pool,
                            apr_pool_t *scratch_pool)
{
  svn_wc__db_wcroot_t *wcroot;
  const char *local_relpath;

  SVN_ERR_ASSERT(svn_dirent_is_absolute(local_abspath));

  SVN_ERR(svn_wc__db_wcroot_parse_local_abspath(&wcroot, &local_relpath, db,
                                                local_abspath,
                                                scratch_pool, scratch_pool));
  VERIFY_USABLE_WCROOT(wcroot);

  SVN_WC__DB_WITH_TXN(read_single_info(info, wcroot, local_relpath,
                                       base_tree_only,
                                       result_pool, scratch_pool),
                      wcroot);

  return SVN_NO_ERROR;
}
