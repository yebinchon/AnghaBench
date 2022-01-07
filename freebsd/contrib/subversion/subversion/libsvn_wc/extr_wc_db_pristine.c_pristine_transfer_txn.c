
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int wc_id; int sdb; } ;
typedef TYPE_1__ svn_wc__db_wcroot_t ;
typedef int svn_sqlite__stmt_t ;
typedef int svn_error_t ;
typedef int svn_checksum_t ;
typedef int svn_cancel_func_t ;
typedef scalar_t__ svn_boolean_t ;
typedef int apr_pool_t ;
typedef int apr_int64_t ;


 int STMT_SELECT_COPY_PRISTINES ;
 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int * maybe_transfer_one_pristine (TYPE_1__*,TYPE_1__*,int const*,int const*,int ,int ,void*,int *) ;
 int svn_error_compose_create (int *,int ) ;
 int * svn_error_trace (int ) ;
 int svn_pool_clear (int *) ;
 int * svn_pool_create (int *) ;
 int svn_pool_destroy (int *) ;
 int svn_sqlite__bindf (int *,char*,int ,char const*) ;
 int svn_sqlite__column_checksum (int const**,int *,int,int *) ;
 int svn_sqlite__column_int64 (int *,int) ;
 int svn_sqlite__get_statement (int **,int ,int ) ;
 int svn_sqlite__reset (int *) ;
 int svn_sqlite__step (scalar_t__*,int *) ;

__attribute__((used)) static svn_error_t *
pristine_transfer_txn(svn_wc__db_wcroot_t *src_wcroot,
                       svn_wc__db_wcroot_t *dst_wcroot,
                       const char *src_relpath,
                       svn_cancel_func_t cancel_func,
                       void *cancel_baton,
                       apr_pool_t *scratch_pool)
{
  svn_sqlite__stmt_t *stmt;
  svn_boolean_t got_row;
  apr_pool_t *iterpool = svn_pool_create(scratch_pool);

  SVN_ERR(svn_sqlite__get_statement(&stmt, src_wcroot->sdb,
                                    STMT_SELECT_COPY_PRISTINES));
  SVN_ERR(svn_sqlite__bindf(stmt, "is", src_wcroot->wc_id, src_relpath));


  SVN_ERR(svn_sqlite__step(&got_row, stmt));

  while (got_row)
    {
      const svn_checksum_t *checksum;
      const svn_checksum_t *md5_checksum;
      apr_int64_t size;
      svn_error_t *err;

      svn_pool_clear(iterpool);

      SVN_ERR(svn_sqlite__column_checksum(&checksum, stmt, 0, iterpool));
      SVN_ERR(svn_sqlite__column_checksum(&md5_checksum, stmt, 1, iterpool));
      size = svn_sqlite__column_int64(stmt, 2);

      err = maybe_transfer_one_pristine(src_wcroot, dst_wcroot,
                                        checksum, md5_checksum, size,
                                        cancel_func, cancel_baton,
                                        iterpool);

      if (err)
        return svn_error_trace(svn_error_compose_create(
                                    err,
                                    svn_sqlite__reset(stmt)));

      SVN_ERR(svn_sqlite__step(&got_row, stmt));
    }
  SVN_ERR(svn_sqlite__reset(stmt));

  svn_pool_destroy(iterpool);

  return SVN_NO_ERROR;
}
