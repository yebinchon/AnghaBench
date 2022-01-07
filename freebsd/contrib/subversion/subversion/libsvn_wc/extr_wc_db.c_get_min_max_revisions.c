
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int wc_id; int sdb; } ;
typedef TYPE_1__ svn_wc__db_wcroot_t ;
typedef int svn_sqlite__stmt_t ;
typedef int svn_revnum_t ;
typedef int svn_error_t ;
typedef scalar_t__ svn_boolean_t ;
typedef int apr_pool_t ;


 int STMT_SELECT_MIN_MAX_REVISIONS ;
 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int svn_sqlite__bindf (int *,char*,int ,char const*) ;
 int svn_sqlite__column_revnum (int *,int) ;
 int svn_sqlite__get_statement (int **,int ,int ) ;
 int svn_sqlite__reset (int *) ;
 int svn_sqlite__step_row (int *) ;

__attribute__((used)) static svn_error_t *
get_min_max_revisions(svn_revnum_t *min_revision,
                      svn_revnum_t *max_revision,
                      svn_wc__db_wcroot_t *wcroot,
                      const char *local_relpath,
                      svn_boolean_t committed,
                      apr_pool_t *scratch_pool)
{
  svn_sqlite__stmt_t *stmt;
  svn_revnum_t min_rev, max_rev;

  SVN_ERR(svn_sqlite__get_statement(&stmt, wcroot->sdb,
                                    STMT_SELECT_MIN_MAX_REVISIONS));
  SVN_ERR(svn_sqlite__bindf(stmt, "is", wcroot->wc_id, local_relpath));
  SVN_ERR(svn_sqlite__step_row(stmt));

  if (committed)
    {
      min_rev = svn_sqlite__column_revnum(stmt, 2);
      max_rev = svn_sqlite__column_revnum(stmt, 3);
    }
  else
    {
      min_rev = svn_sqlite__column_revnum(stmt, 0);
      max_rev = svn_sqlite__column_revnum(stmt, 1);
    }


  SVN_ERR(svn_sqlite__reset(stmt));

  if (min_revision)
    *min_revision = min_rev;
  if (max_revision)
    *max_revision = max_rev;

  return SVN_NO_ERROR;
}
