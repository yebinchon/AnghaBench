
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_wc_entry_t ;
typedef int svn_wc__db_wcroot_t ;
typedef int svn_wc__db_t ;
typedef int svn_error_t ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int SVN_WC__DB_WITH_TXN (int ,int *) ;
 int VERIFY_USABLE_WCROOT (int *) ;
 int read_entry_pair_txn (int const**,int const**,int *,char const*,int *,char const*,char const*,int *,int *) ;
 int svn_wc__db_wcroot_parse_local_abspath (int **,char const**,int *,char const*,int *,int *) ;

__attribute__((used)) static svn_error_t *
read_entry_pair(const svn_wc_entry_t **parent_entry,
                const svn_wc_entry_t **entry,
                svn_wc__db_t *db,
                const char *dir_abspath,
                const char *name,
                apr_pool_t *result_pool,
                apr_pool_t *scratch_pool)
{
  svn_wc__db_wcroot_t *wcroot;
  const char *dir_relpath;

  SVN_ERR(svn_wc__db_wcroot_parse_local_abspath(&wcroot, &dir_relpath,
                                                db, dir_abspath,
                                                scratch_pool, scratch_pool));
  VERIFY_USABLE_WCROOT(wcroot);

  SVN_WC__DB_WITH_TXN(read_entry_pair_txn(parent_entry, entry,
                                          db, dir_abspath,
                                          wcroot, dir_relpath,
                                          name,
                                          result_pool, scratch_pool),
                      wcroot);

  return SVN_NO_ERROR;
}
