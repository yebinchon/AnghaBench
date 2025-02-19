
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int wc_id; int sdb; } ;
typedef TYPE_1__ svn_wc__db_wcroot_t ;
typedef int svn_sqlite__stmt_t ;
typedef int svn_error_t ;
typedef scalar_t__ svn_boolean_t ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;


 int STMT_SELECT_ACTUAL_PROPS ;
 int SVN_ERR (int ) ;
 int * svn_error_trace (int ) ;
 int svn_sqlite__bindf (int *,char*,int ,char const*) ;
 int svn_sqlite__column_is_null (int *,int ) ;
 int svn_sqlite__column_properties (int **,int *,int ,int *,int *) ;
 int svn_sqlite__get_statement (int **,int ,int ) ;
 int svn_sqlite__reset (int *) ;
 int svn_sqlite__step (scalar_t__*,int *) ;

__attribute__((used)) static svn_error_t *
db_get_changed_props(apr_hash_t **actual_props,
                     svn_wc__db_wcroot_t *wcroot,
                     const char *local_relpath,
                     apr_pool_t *result_pool,
                     apr_pool_t *scratch_pool)
{
  svn_sqlite__stmt_t *stmt;
  svn_boolean_t have_row;
  SVN_ERR(svn_sqlite__get_statement(&stmt, wcroot->sdb,
                                STMT_SELECT_ACTUAL_PROPS));
  SVN_ERR(svn_sqlite__bindf(stmt, "is", wcroot->wc_id, local_relpath));
  SVN_ERR(svn_sqlite__step(&have_row, stmt));

  if (have_row && !svn_sqlite__column_is_null(stmt, 0))
    SVN_ERR(svn_sqlite__column_properties(actual_props, stmt, 0,
                                          result_pool, scratch_pool));
  else
    *actual_props = ((void*)0);

  return svn_error_trace(svn_sqlite__reset(stmt));
}
