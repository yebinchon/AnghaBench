
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_1__ ;


typedef int svn_sqlite__stmt_t ;
typedef int svn_sqlite__db_t ;
struct TYPE_12__ {scalar_t__ apr_err; } ;
typedef TYPE_1__ svn_error_t ;


 int STMT_INTERNAL_ROLLBACK_TRANSACTION ;
 scalar_t__ SVN_ERR_SQLITE_BUSY ;
 int SVN_ERR_SQLITE_ROLLBACK_FAILED ;
 TYPE_1__* get_internal_statement (int **,int *,int ) ;
 int reset_all_statements (int *,TYPE_1__*) ;
 TYPE_1__* svn_error_compose_create (TYPE_1__*,TYPE_1__*) ;
 TYPE_1__* svn_error_create (int ,TYPE_1__*,int *) ;
 TYPE_1__* svn_error_trace (int ) ;
 int svn_sqlite__step_done (int *) ;

__attribute__((used)) static svn_error_t *
rollback_transaction(svn_sqlite__db_t *db,
                     svn_error_t *error_to_wrap)
{
  svn_sqlite__stmt_t *stmt;
  svn_error_t *err;

  err = get_internal_statement(&stmt, db, STMT_INTERNAL_ROLLBACK_TRANSACTION);
  if (!err)
    {
      err = svn_error_trace(svn_sqlite__step_done(stmt));

      if (err && err->apr_err == SVN_ERR_SQLITE_BUSY)
        {
          err = svn_error_trace(reset_all_statements(db, err));
          err = svn_error_compose_create(
                      svn_error_trace(svn_sqlite__step_done(stmt)),
                      err);
        }
    }

  if (err)
    {

      err = svn_error_create(SVN_ERR_SQLITE_ROLLBACK_FAILED, err, ((void*)0));
    }

  return svn_error_compose_create(error_to_wrap, err);
}
