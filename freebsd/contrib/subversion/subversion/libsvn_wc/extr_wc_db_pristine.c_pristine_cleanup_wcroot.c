
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int sdb; } ;
typedef TYPE_1__ svn_wc__db_wcroot_t ;
typedef int svn_sqlite__stmt_t ;
typedef int svn_error_t ;
typedef int svn_checksum_t ;
typedef int svn_boolean_t ;
typedef int apr_pool_t ;


 int STMT_SELECT_UNREFERENCED_PRISTINES ;
 int SVN_ERR (int ) ;
 int * pristine_remove_if_unreferenced (TYPE_1__*,int const*,int *) ;
 int svn_error_compose_create (int *,int ) ;
 int * svn_error_trace (int ) ;
 int svn_pool_clear (int *) ;
 int * svn_pool_create (int *) ;
 int svn_pool_destroy (int *) ;
 int svn_sqlite__column_checksum (int const**,int *,int ,int *) ;
 int svn_sqlite__get_statement (int **,int ,int ) ;
 int svn_sqlite__reset (int *) ;
 int svn_sqlite__step (int *,int *) ;

__attribute__((used)) static svn_error_t *
pristine_cleanup_wcroot(svn_wc__db_wcroot_t *wcroot,
                        apr_pool_t *scratch_pool)
{
  svn_sqlite__stmt_t *stmt;
  svn_error_t *err = ((void*)0);
  apr_pool_t *iterpool = svn_pool_create(scratch_pool);


  SVN_ERR(svn_sqlite__get_statement(&stmt, wcroot->sdb,
                                    STMT_SELECT_UNREFERENCED_PRISTINES));
  while (! err)
    {
      svn_boolean_t have_row;
      const svn_checksum_t *sha1_checksum;

      svn_pool_clear(iterpool);

      SVN_ERR(svn_sqlite__step(&have_row, stmt));
      if (! have_row)
        break;

      SVN_ERR(svn_sqlite__column_checksum(&sha1_checksum, stmt, 0,
                                          iterpool));
      err = pristine_remove_if_unreferenced(wcroot, sha1_checksum,
                                            iterpool);
    }

  svn_pool_destroy(iterpool);

  return svn_error_trace(
      svn_error_compose_create(err, svn_sqlite__reset(stmt)));
}
