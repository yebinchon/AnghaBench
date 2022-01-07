
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_sqlite__stmt_t ;
typedef int svn_error_t ;


 int FALSE ;
 int SVN_ERR (int ) ;
 int step_with_expectation (int *,int ) ;
 int * svn_error_trace (int ) ;
 int svn_sqlite__reset (int *) ;

svn_error_t *
svn_sqlite__step_done(svn_sqlite__stmt_t *stmt)
{
  SVN_ERR(step_with_expectation(stmt, FALSE));
  return svn_error_trace(svn_sqlite__reset(stmt));
}
