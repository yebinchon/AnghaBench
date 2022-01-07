
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int wc_id; int sdb; } ;
typedef TYPE_1__ svn_wc__db_wcroot_t ;
typedef int svn_sqlite__stmt_t ;
typedef int svn_error_t ;
typedef scalar_t__ svn_boolean_t ;
typedef scalar_t__ apr_size_t ;
typedef int apr_pool_t ;
typedef int apr_int64_t ;


 scalar_t__ FALSE ;
 int STMT_HAS_SWITCHED ;
 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 scalar_t__ TRUE ;
 scalar_t__ strcmp (char const*,char const*) ;
 scalar_t__ strlen (char const*) ;
 char* svn_path_url_add_component2 (char const*,char const*,int *) ;
 int svn_sqlite__bindf (int *,char*,int ,char const*,char const*) ;
 int svn_sqlite__get_statement (int **,int ,int ) ;
 int svn_sqlite__reset (int *) ;
 int svn_sqlite__step (scalar_t__*,int *) ;
 int svn_wc__db_base_get_info_internal (int *,int *,int *,char const**,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,TYPE_1__*,char const*,int *,int *) ;
 int svn_wc__db_fetch_repos_info (char const**,int *,TYPE_1__*,int ,int *) ;

__attribute__((used)) static svn_error_t *
has_switched_subtrees(svn_boolean_t *is_switched,
                      svn_wc__db_wcroot_t *wcroot,
                      const char *local_relpath,
                      const char *trail_url,
                      apr_pool_t *scratch_pool)
{
  svn_sqlite__stmt_t *stmt;
  svn_boolean_t have_row;
  apr_int64_t repos_id;
  const char *repos_relpath;


  if (!is_switched)
    return SVN_NO_ERROR;

  *is_switched = FALSE;

  SVN_ERR(svn_wc__db_base_get_info_internal(((void*)0), ((void*)0), ((void*)0),
                                            &repos_relpath, &repos_id,
                                            ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0),
                                            ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0),
                                            wcroot, local_relpath,
                                            scratch_pool, scratch_pool));


  if (trail_url != ((void*)0))
    {
      const char *repos_root_url;
      const char *url;
      apr_size_t len1, len2;





      SVN_ERR(svn_wc__db_fetch_repos_info(&repos_root_url, ((void*)0), wcroot,
                                          repos_id, scratch_pool));
      url = svn_path_url_add_component2(repos_root_url, repos_relpath,
                                        scratch_pool);

      len1 = strlen(trail_url);
      len2 = strlen(url);
      if ((len1 > len2) || strcmp(url + len2 - len1, trail_url))
        {
          *is_switched = TRUE;
          return SVN_NO_ERROR;
        }
    }

  SVN_ERR(svn_sqlite__get_statement(&stmt, wcroot->sdb, STMT_HAS_SWITCHED));
  SVN_ERR(svn_sqlite__bindf(stmt, "iss", wcroot->wc_id, local_relpath, repos_relpath));
  SVN_ERR(svn_sqlite__step(&have_row, stmt));
  if (have_row)
    *is_switched = TRUE;
  SVN_ERR(svn_sqlite__reset(stmt));

  return SVN_NO_ERROR;
}
