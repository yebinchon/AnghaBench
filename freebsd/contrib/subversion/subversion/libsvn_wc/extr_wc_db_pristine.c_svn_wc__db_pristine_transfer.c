
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ sdb; } ;
typedef TYPE_1__ svn_wc__db_wcroot_t ;
typedef int svn_wc__db_t ;
typedef int svn_error_t ;
typedef int svn_cancel_func_t ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int SVN_WC__DB_WITH_TXN (int ,TYPE_1__*) ;
 int VERIFY_USABLE_WCROOT (TYPE_1__*) ;
 int pristine_transfer_txn (TYPE_1__*,TYPE_1__*,char const*,int ,void*,int *) ;
 int svn_wc__db_wcroot_parse_local_abspath (TYPE_1__**,char const**,int *,char const*,int *,int *) ;

svn_error_t *
svn_wc__db_pristine_transfer(svn_wc__db_t *db,
                             const char *src_local_abspath,
                             const char *dst_wri_abspath,
                             svn_cancel_func_t cancel_func,
                             void *cancel_baton,
                             apr_pool_t *scratch_pool)
{
  svn_wc__db_wcroot_t *src_wcroot, *dst_wcroot;
  const char *src_relpath, *dst_relpath;

  SVN_ERR(svn_wc__db_wcroot_parse_local_abspath(&src_wcroot, &src_relpath,
                                                db, src_local_abspath,
                                                scratch_pool, scratch_pool));
  VERIFY_USABLE_WCROOT(src_wcroot);
  SVN_ERR(svn_wc__db_wcroot_parse_local_abspath(&dst_wcroot, &dst_relpath,
                                                db, dst_wri_abspath,
                                                scratch_pool, scratch_pool));
  VERIFY_USABLE_WCROOT(dst_wcroot);

  if (src_wcroot == dst_wcroot
      || src_wcroot->sdb == dst_wcroot->sdb)
    {
      return SVN_NO_ERROR;
    }

  SVN_WC__DB_WITH_TXN(
    pristine_transfer_txn(src_wcroot, dst_wcroot, src_relpath,
                          cancel_func, cancel_baton, scratch_pool),
    dst_wcroot);

  return SVN_NO_ERROR;
}
