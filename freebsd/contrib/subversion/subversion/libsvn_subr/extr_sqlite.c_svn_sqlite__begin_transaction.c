
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_sqlite__stmt_t ;
typedef int svn_sqlite__db_t ;
typedef int svn_error_t ;


 int STMT_INTERNAL_BEGIN_TRANSACTION ;
 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int get_internal_statement (int **,int *,int ) ;
 int svn_sqlite__step_done (int *) ;

svn_error_t *
svn_sqlite__begin_transaction(svn_sqlite__db_t *db)
{
  svn_sqlite__stmt_t *stmt;

  SVN_ERR(get_internal_statement(&stmt, db,
                                 STMT_INTERNAL_BEGIN_TRANSACTION));
  SVN_ERR(svn_sqlite__step_done(stmt));
  return SVN_NO_ERROR;
}
