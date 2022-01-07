
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


 int STMT_SELECT_MOVED_OUTSIDE ;
 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 char* apr_pstrdup (int *,char const*) ;
 char* svn_relpath_get_longest_ancestor (char const*,char const*,int *) ;
 int svn_sqlite__bindf (int *,char*,int ,char const*,int ) ;
 char* svn_sqlite__column_text (int *,int,int *) ;
 int svn_sqlite__get_statement (int **,int ,int ) ;
 int svn_sqlite__reset (int *) ;
 int svn_sqlite__step (scalar_t__*,int *) ;

__attribute__((used)) static svn_error_t *
required_lock_for_resolve(const char **required_relpath,
                          svn_wc__db_wcroot_t *wcroot,
                          const char *local_relpath,
                          apr_pool_t *result_pool,
                          apr_pool_t *scratch_pool)
{
  svn_sqlite__stmt_t *stmt;
  svn_boolean_t have_row;

  *required_relpath = local_relpath;






  SVN_ERR(svn_sqlite__get_statement(&stmt, wcroot->sdb,
                                    STMT_SELECT_MOVED_OUTSIDE));
  SVN_ERR(svn_sqlite__bindf(stmt, "isd", wcroot->wc_id, local_relpath, 0));
  SVN_ERR(svn_sqlite__step(&have_row, stmt));

  while (have_row)
    {
      const char *move_dst_relpath = svn_sqlite__column_text(stmt, 1,
                                                             ((void*)0));

      *required_relpath
        = svn_relpath_get_longest_ancestor(*required_relpath,
                                           move_dst_relpath,
                                           scratch_pool);

      SVN_ERR(svn_sqlite__step(&have_row, stmt));
    }
  SVN_ERR(svn_sqlite__reset(stmt));

  *required_relpath = apr_pstrdup(result_pool, *required_relpath);

  return SVN_NO_ERROR;
}
