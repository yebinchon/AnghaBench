
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_sqlite__stmt_t ;
typedef int svn_error_t ;


 int TRUE ;
 int step_with_expectation (int *,int ) ;
 int * svn_error_trace (int ) ;

svn_error_t *
svn_sqlite__step_row(svn_sqlite__stmt_t *stmt)
{
  return svn_error_trace(step_with_expectation(stmt, TRUE));
}
