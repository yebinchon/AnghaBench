
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_wc__db_wcroot_t ;
typedef int svn_wc__db_t ;
typedef int svn_error_t ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int SVN_WC__DB_WITH_TXN (int ,int *) ;
 int SVN_WC__WC_NG_VERSION ;
 int VERIFY_USABLE_WCROOT (int *) ;
 int read_entries_new (int **,int *,char const*,int *,char const*,int *,int *) ;
 int * svn_error_trace (int ) ;
 int svn_wc__db_temp_get_format (int*,int *,char const*,int *) ;
 int svn_wc__db_wcroot_parse_local_abspath (int **,char const**,int *,char const*,int *,int *) ;
 int svn_wc__read_entries_old (int **,char const*,int *,int *) ;

__attribute__((used)) static svn_error_t *
read_entries(apr_hash_t **entries,
             svn_wc__db_t *db,
             const char *dir_abspath,
             apr_pool_t *result_pool,
             apr_pool_t *scratch_pool)
{
  svn_wc__db_wcroot_t *wcroot;
  const char *dir_relpath;
  int wc_format;

  SVN_ERR(svn_wc__db_temp_get_format(&wc_format, db, dir_abspath,
                                     scratch_pool));

  if (wc_format < SVN_WC__WC_NG_VERSION)
    return svn_error_trace(svn_wc__read_entries_old(entries,
                                                    dir_abspath,
                                                    result_pool,
                                                    scratch_pool));

  SVN_ERR(svn_wc__db_wcroot_parse_local_abspath(&wcroot, &dir_relpath,
                                                db, dir_abspath,
                                                scratch_pool, scratch_pool));
  VERIFY_USABLE_WCROOT(wcroot);

  SVN_WC__DB_WITH_TXN(read_entries_new(entries,
                                       db, dir_abspath,
                                       wcroot, dir_relpath,
                                       result_pool, scratch_pool),
                      wcroot);

  return SVN_NO_ERROR;
}
