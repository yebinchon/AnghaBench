
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_sqlite__stmt_t ;
typedef int svn_sqlite__db_t ;
typedef int svn_error_t ;


 int STMT_INTERNAL_COMMIT_TRANSACTION ;
 int * SVN_NO_ERROR ;
 int * get_internal_statement (int **,int *,int ) ;
 int rollback_transaction (int *,int *) ;
 int * svn_error_trace (int ) ;
 int svn_sqlite__step_done (int *) ;

svn_error_t *
svn_sqlite__finish_transaction(svn_sqlite__db_t *db,
                               svn_error_t *err)
{
  svn_sqlite__stmt_t *stmt;


  if (err)
    {
      return svn_error_trace(rollback_transaction(db, err));
    }
  else
    {
      err = get_internal_statement(&stmt, db,
                                   STMT_INTERNAL_COMMIT_TRANSACTION);
      if (!err)
        err = svn_error_trace(svn_sqlite__step_done(stmt));
      if (err)
        return svn_error_trace(rollback_transaction(db, err));
    }

  return SVN_NO_ERROR;
}
