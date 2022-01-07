
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int abspath; } ;
typedef TYPE_1__ svn_wc__db_wcroot_t ;
typedef int svn_wc__db_t ;
typedef int svn_error_t ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int SVN_WC__DB_WITH_TXN (int ,TYPE_1__*) ;
 int VERIFY_USABLE_WCROOT (TYPE_1__*) ;
 int find_wclock (char const**,TYPE_1__*,char const*,int *,int *) ;
 int svn_wc__db_from_relpath (char const**,int *,int ,char const*,int *,int *) ;
 int svn_wc__db_wcroot_parse_local_abspath (TYPE_1__**,char const**,int *,char const*,int *,int *) ;

svn_error_t*
svn_wc__db_wclock_find_root(const char **lock_abspath,
                            svn_wc__db_t *db,
                            const char *local_abspath,
                            apr_pool_t *result_pool,
                            apr_pool_t *scratch_pool)
{
  svn_wc__db_wcroot_t *wcroot;
  const char *local_relpath;
  const char *lock_relpath;

  SVN_ERR(svn_wc__db_wcroot_parse_local_abspath(&wcroot, &local_relpath, db,
                              local_abspath, scratch_pool, scratch_pool));
  VERIFY_USABLE_WCROOT(wcroot);

  SVN_WC__DB_WITH_TXN(
    find_wclock(&lock_relpath, wcroot, local_relpath,
                scratch_pool, scratch_pool),
    wcroot);

  if (!lock_relpath)
    *lock_abspath = ((void*)0);
  else
    SVN_ERR(svn_wc__db_from_relpath(lock_abspath, db, wcroot->abspath,
                                    lock_relpath, result_pool, scratch_pool));
  return SVN_NO_ERROR;
}
