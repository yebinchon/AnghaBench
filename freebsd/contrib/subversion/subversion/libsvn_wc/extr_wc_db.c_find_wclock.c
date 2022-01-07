
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


 int STMT_SELECT_ANCESTOR_WCLOCKS ;
 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 char* apr_pstrdup (int *,char const*) ;
 char* apr_pstrndup (int *,char const*,int) ;
 int relpath_depth (char const*) ;
 char* strchr (char const*,char) ;
 int * svn_error_trace (int ) ;
 scalar_t__ svn_relpath_skip_ancestor (char const*,char const*) ;
 int svn_sqlite__bindf (int *,char*,int ,char const*,char const*) ;
 int svn_sqlite__column_int (int *,int) ;
 char* svn_sqlite__column_text (int *,int ,int *) ;
 int svn_sqlite__get_statement (int **,int ,int ) ;
 int svn_sqlite__reset (int *) ;
 int svn_sqlite__step (scalar_t__*,int *) ;

__attribute__((used)) static svn_error_t *
find_wclock(const char **lock_relpath,
            svn_wc__db_wcroot_t *wcroot,
            const char *dir_relpath,
            apr_pool_t *result_pool,
            apr_pool_t *scratch_pool)
{
  svn_sqlite__stmt_t *stmt;
  svn_boolean_t have_row;
  int dir_depth = relpath_depth(dir_relpath);
  const char *first_relpath;




  SVN_ERR(svn_sqlite__get_statement(&stmt, wcroot->sdb,
                                    STMT_SELECT_ANCESTOR_WCLOCKS));




  first_relpath = strchr(dir_relpath, '/');

  if (first_relpath != ((void*)0))
    first_relpath = apr_pstrndup(scratch_pool, dir_relpath,
                                 first_relpath - dir_relpath);
  else
    first_relpath = dir_relpath;

  SVN_ERR(svn_sqlite__bindf(stmt, "iss",
                            wcroot->wc_id,
                            dir_relpath,
                            first_relpath));

  SVN_ERR(svn_sqlite__step(&have_row, stmt));

  while (have_row)
    {
      const char *relpath = svn_sqlite__column_text(stmt, 0, ((void*)0));

      if (svn_relpath_skip_ancestor(relpath, dir_relpath))
        {
          int locked_levels = svn_sqlite__column_int(stmt, 1);
          int row_depth = relpath_depth(relpath);

          if (locked_levels == -1
              || locked_levels + row_depth >= dir_depth)
            {
              *lock_relpath = apr_pstrdup(result_pool, relpath);
              SVN_ERR(svn_sqlite__reset(stmt));
              return SVN_NO_ERROR;
            }
        }

      SVN_ERR(svn_sqlite__step(&have_row, stmt));
    }

  *lock_relpath = ((void*)0);

  return svn_error_trace(svn_sqlite__reset(stmt));
}
