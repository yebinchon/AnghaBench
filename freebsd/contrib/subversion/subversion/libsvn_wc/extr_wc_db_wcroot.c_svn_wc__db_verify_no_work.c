
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_sqlite__stmt_t ;
typedef int svn_sqlite__db_t ;
typedef int svn_error_t ;
typedef scalar_t__ svn_boolean_t ;


 int STMT_LOOK_FOR_WORK ;
 int SVN_ERR (int ) ;
 int SVN_ERR_WC_CLEANUP_REQUIRED ;
 int * SVN_NO_ERROR ;
 int * svn_error_create (int ,int *,int *) ;
 int svn_sqlite__get_statement (int **,int *,int ) ;
 int svn_sqlite__reset (int *) ;
 int svn_sqlite__step (scalar_t__*,int *) ;

svn_error_t *
svn_wc__db_verify_no_work(svn_sqlite__db_t *sdb)
{
  svn_sqlite__stmt_t *stmt;
  svn_boolean_t have_row;

  SVN_ERR(svn_sqlite__get_statement(&stmt, sdb, STMT_LOOK_FOR_WORK));
  SVN_ERR(svn_sqlite__step(&have_row, stmt));
  SVN_ERR(svn_sqlite__reset(stmt));

  if (have_row)
    return svn_error_create(SVN_ERR_WC_CLEANUP_REQUIRED, ((void*)0),
                            ((void*)0) );

  return SVN_NO_ERROR;
}
