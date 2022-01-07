
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_1__ ;


typedef int svn_sqlite__stmt_t ;
typedef int svn_sqlite__db_t ;
struct TYPE_11__ {scalar_t__ apr_err; } ;
typedef TYPE_1__ svn_error_t ;


 int STMT_INTERNAL_RELEASE_SAVEPOINT_SVN ;
 int STMT_INTERNAL_ROLLBACK_TO_SAVEPOINT_SVN ;
 int SVN_ERR (TYPE_1__*) ;
 scalar_t__ SVN_ERR_SQLITE_BUSY ;
 TYPE_1__* get_internal_statement (int **,int *,int ) ;
 int reset_all_statements (int *,TYPE_1__*) ;
 TYPE_1__* svn_error_compose_create (TYPE_1__*,TYPE_1__*) ;
 TYPE_1__* svn_error_trace (int ) ;
 int svn_sqlite__step_done (int *) ;

svn_error_t *
svn_sqlite__finish_savepoint(svn_sqlite__db_t *db,
                             svn_error_t *err)
{
  svn_sqlite__stmt_t *stmt;

  if (err)
    {
      svn_error_t *err2;

      err2 = get_internal_statement(&stmt, db,
                                    STMT_INTERNAL_ROLLBACK_TO_SAVEPOINT_SVN);

      if (!err2)
        {
          err2 = svn_error_trace(svn_sqlite__step_done(stmt));

          if (err2 && err2->apr_err == SVN_ERR_SQLITE_BUSY)
            {






              err2 = svn_error_trace(reset_all_statements(db, err2));
              err2 = svn_error_compose_create(
                          svn_error_trace(svn_sqlite__step_done(stmt)),
                          err2);
            }
        }

      err = svn_error_compose_create(err, err2);
      err2 = get_internal_statement(&stmt, db,
                                    STMT_INTERNAL_RELEASE_SAVEPOINT_SVN);

      if (!err2)
        err2 = svn_error_trace(svn_sqlite__step_done(stmt));

      return svn_error_compose_create(err, err2);
    }

  SVN_ERR(get_internal_statement(&stmt, db,
                                 STMT_INTERNAL_RELEASE_SAVEPOINT_SVN));



  return svn_error_trace(svn_sqlite__step_done(stmt));
}
