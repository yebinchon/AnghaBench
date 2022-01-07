
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int abspath; int sdb; } ;
typedef TYPE_1__ svn_wc__db_wcroot_t ;
typedef int * (* svn_wc__db_verify_cb_t ) (void*,int ,char const*,int,int,char const*,int *) ;
typedef int svn_sqlite__stmt_t ;
typedef int svn_error_t ;
typedef scalar_t__ svn_boolean_t ;
typedef int apr_pool_t ;


 int STMT_STATIC_VERIFY ;
 int SVN_ERR (int ) ;
 int svn_error_compose_create (int *,int ) ;
 int * svn_error_trace (int ) ;
 int svn_pool_clear (int *) ;
 int * svn_pool_create (int *) ;
 int svn_pool_destroy (int *) ;
 int svn_sqlite__column_int (int *,int) ;
 char* svn_sqlite__column_text (int *,int,int *) ;
 int svn_sqlite__get_statement (int **,int ,int ) ;
 int svn_sqlite__reset (int *) ;
 int svn_sqlite__step (scalar_t__*,int *) ;

svn_error_t *
svn_wc__db_verify_db_full_internal(svn_wc__db_wcroot_t *wcroot,
                                   svn_wc__db_verify_cb_t callback,
                                   void *baton,
                                   apr_pool_t *scratch_pool)
{
  svn_sqlite__stmt_t *stmt;
  svn_boolean_t have_row;
  svn_error_t *err = ((void*)0);
  apr_pool_t *iterpool = svn_pool_create(scratch_pool);

  SVN_ERR(svn_sqlite__get_statement(&stmt, wcroot->sdb, STMT_STATIC_VERIFY));
  SVN_ERR(svn_sqlite__step(&have_row, stmt));

  while (have_row)
    {
      const char *local_relpath;
      int op_depth = svn_sqlite__column_int(stmt, 1);
      int id = svn_sqlite__column_int(stmt, 2);
      const char *msg;

      svn_pool_clear(iterpool);

      local_relpath = svn_sqlite__column_text(stmt, 0, iterpool);
      msg = svn_sqlite__column_text(stmt, 3, scratch_pool);

      err = callback(baton, wcroot->abspath, local_relpath, op_depth,
                     id, msg, iterpool);

      if (err)
        break;

      SVN_ERR(svn_sqlite__step(&have_row, stmt));
    }

  svn_pool_destroy(iterpool);

  return svn_error_trace(
            svn_error_compose_create(err, svn_sqlite__reset(stmt)));
}
