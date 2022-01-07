
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int wc_id; int sdb; } ;
typedef TYPE_1__ svn_wc__db_wcroot_t ;
typedef int svn_wc__db_t ;
typedef int svn_sqlite__stmt_t ;
typedef int svn_error_t ;
typedef scalar_t__ svn_boolean_t ;
typedef int apr_pool_t ;
typedef scalar_t__ apr_int64_t ;
typedef int apr_hash_t ;


 scalar_t__ INVALID_REPOS_ID ;
 int STMT_SELECT_BASE_NODE_LOCK_TOKENS_RECURSIVE ;
 int SVN_ERR (int ) ;
 int SVN_ERR_ASSERT (int ) ;
 int VERIFY_USABLE_WCROOT (TYPE_1__*) ;
 int * apr_hash_make (int *) ;
 int svn_dirent_is_absolute (char const*) ;
 int svn_error_compose_create (int *,int *) ;
 int * svn_error_trace (int ) ;
 int svn_hash_sets (int *,int ,char const*) ;
 int svn_path_url_add_component2 (char const*,char const*,int *) ;
 int svn_sqlite__bindf (int *,char*,int ,char const*) ;
 scalar_t__ svn_sqlite__column_int64 (int *,int ) ;
 char* svn_sqlite__column_text (int *,int,int *) ;
 int svn_sqlite__get_statement (int **,int ,int ) ;
 int * svn_sqlite__reset (int *) ;
 int svn_sqlite__step (scalar_t__*,int *) ;
 int * svn_wc__db_fetch_repos_info (char const**,int *,TYPE_1__*,scalar_t__,int *) ;
 int svn_wc__db_wcroot_parse_local_abspath (TYPE_1__**,char const**,int *,char const*,int *,int *) ;

svn_error_t *
svn_wc__db_base_get_lock_tokens_recursive(apr_hash_t **lock_tokens,
                                          svn_wc__db_t *db,
                                          const char *local_abspath,
                                          apr_pool_t *result_pool,
                                          apr_pool_t *scratch_pool)
{
  svn_wc__db_wcroot_t *wcroot;
  const char *local_relpath;
  svn_sqlite__stmt_t *stmt;
  svn_boolean_t have_row;
  apr_int64_t last_repos_id = INVALID_REPOS_ID;
  const char *last_repos_root_url = ((void*)0);

  SVN_ERR_ASSERT(svn_dirent_is_absolute(local_abspath));

  SVN_ERR(svn_wc__db_wcroot_parse_local_abspath(&wcroot, &local_relpath,
                                                db, local_abspath,
                                                scratch_pool, scratch_pool));
  VERIFY_USABLE_WCROOT(wcroot);

  *lock_tokens = apr_hash_make(result_pool);


  SVN_ERR(svn_sqlite__get_statement(
              &stmt, wcroot->sdb,
              STMT_SELECT_BASE_NODE_LOCK_TOKENS_RECURSIVE));

  SVN_ERR(svn_sqlite__bindf(stmt, "is", wcroot->wc_id, local_relpath));
  SVN_ERR(svn_sqlite__step(&have_row, stmt));
  while (have_row)
    {
      apr_int64_t child_repos_id = svn_sqlite__column_int64(stmt, 0);
      const char *child_relpath = svn_sqlite__column_text(stmt, 1, ((void*)0));
      const char *lock_token = svn_sqlite__column_text(stmt, 2, result_pool);

      if (child_repos_id != last_repos_id)
        {
          svn_error_t *err = svn_wc__db_fetch_repos_info(&last_repos_root_url,
                                                         ((void*)0), wcroot,
                                                         child_repos_id,
                                                         scratch_pool);

          if (err)
            {
              return svn_error_trace(
                            svn_error_compose_create(err,
                                                     svn_sqlite__reset(stmt)));
            }

          last_repos_id = child_repos_id;
        }

      SVN_ERR_ASSERT(last_repos_root_url != ((void*)0));
      svn_hash_sets(*lock_tokens,
                    svn_path_url_add_component2(last_repos_root_url,
                                                child_relpath, result_pool),
                    lock_token);

      SVN_ERR(svn_sqlite__step(&have_row, stmt));
    }
  return svn_sqlite__reset(stmt);
}
