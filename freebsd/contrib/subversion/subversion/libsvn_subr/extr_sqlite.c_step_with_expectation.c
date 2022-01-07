
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_sqlite__stmt_t ;
typedef int svn_error_t ;
typedef scalar_t__ svn_boolean_t ;


 int SVN_ERR (int ) ;
 int SVN_ERR_SQLITE_ERROR ;
 int * SVN_NO_ERROR ;
 int _ (char*) ;
 int * svn_error_create (int ,int ,int ) ;
 int svn_sqlite__reset (int *) ;
 int svn_sqlite__step (scalar_t__*,int *) ;

__attribute__((used)) static svn_error_t *
step_with_expectation(svn_sqlite__stmt_t* stmt,
                      svn_boolean_t expecting_row)
{
  svn_boolean_t got_row;

  SVN_ERR(svn_sqlite__step(&got_row, stmt));
  if ((got_row && !expecting_row)
      ||
      (!got_row && expecting_row))
    return svn_error_create(SVN_ERR_SQLITE_ERROR,
                            svn_sqlite__reset(stmt),
                            expecting_row
                              ? _("sqlite: Expected database row missing")
                              : _("sqlite: Extra database row found"));

  return SVN_NO_ERROR;
}
