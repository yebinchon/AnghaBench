
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_wc__db_t ;
typedef int svn_sqlite__stmt_t ;
typedef int svn_sqlite__db_t ;
typedef int svn_error_t ;
typedef scalar_t__ svn_boolean_t ;
struct bump_baton {int wcroot_abspath; } ;
typedef int apr_pool_t ;


 int FALSE ;
 int STMT_UPGRADE_30_SELECT_CONFLICT_SEPARATE ;
 int STMT_UPGRADE_TO_30 ;
 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int TRUE ;
 int * bump_30_upgrade_one_conflict (int *,int ,int *,int *,int *) ;
 int svn_error_compose_create (int *,int ) ;
 int * svn_error_trace (int ) ;
 int svn_pool_clear (int *) ;
 int * svn_pool_create (int *) ;
 int svn_sqlite__exec_statements (int *,int ) ;
 int svn_sqlite__get_statement (int **,int *,int ) ;
 int svn_sqlite__reset (int *) ;
 int svn_sqlite__step (scalar_t__*,int *) ;
 int svn_wc__db_close (int *) ;
 int svn_wc__db_open (int **,int *,int ,int ,int *,int *) ;

__attribute__((used)) static svn_error_t *
bump_to_30(void *baton, svn_sqlite__db_t *sdb, apr_pool_t *scratch_pool)
{
  struct bump_baton *bb = baton;
  svn_boolean_t have_row;
  apr_pool_t *iterpool = svn_pool_create(scratch_pool);
  svn_sqlite__stmt_t *stmt;
  svn_wc__db_t *db;

  SVN_ERR(svn_wc__db_open(&db, ((void*)0), TRUE , FALSE,
                          scratch_pool, scratch_pool));

  SVN_ERR(svn_sqlite__get_statement(&stmt, sdb,
                                    STMT_UPGRADE_30_SELECT_CONFLICT_SEPARATE));
  SVN_ERR(svn_sqlite__step(&have_row, stmt));

  while (have_row)
    {
      svn_error_t *err;
      svn_pool_clear(iterpool);

      err = bump_30_upgrade_one_conflict(db, bb->wcroot_abspath, stmt, sdb,
                                         iterpool);

      if (err)
        {
          return svn_error_trace(
                    svn_error_compose_create(
                            err,
                            svn_sqlite__reset(stmt)));
        }

      SVN_ERR(svn_sqlite__step(&have_row, stmt));
    }
  SVN_ERR(svn_sqlite__reset(stmt));

  SVN_ERR(svn_sqlite__exec_statements(sdb, STMT_UPGRADE_TO_30));
  SVN_ERR(svn_wc__db_close(db));
  return SVN_NO_ERROR;
}
