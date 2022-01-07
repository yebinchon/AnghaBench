
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int wc_id; int sdb; } ;
typedef TYPE_1__ svn_wc__db_wcroot_t ;
typedef int svn_sqlite__stmt_t ;
typedef int svn_error_t ;
typedef scalar_t__ svn_boolean_t ;
struct svn_wc__db_base_info_t {char const* repos_root_url; int lock; int update_root; int depth; int revnum; void* kind; void* status; void* repos_relpath; } ;
typedef int apr_pool_t ;
typedef scalar_t__ apr_int64_t ;
typedef int apr_hash_t ;


 scalar_t__ INVALID_REPOS_ID ;
 int STMT_SELECT_BASE_CHILDREN_INFO ;
 int STMT_SELECT_BASE_CHILDREN_INFO_LOCK ;
 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int * apr_hash_make (int *) ;
 struct svn_wc__db_base_info_t* apr_pcalloc (int *,int) ;
 int depth_map ;
 int kind_map ;
 int lock_from_columns (int *,int,int,int,int,int *) ;
 int presence_map ;
 int svn_depth_unknown ;
 int svn_error_compose_create (int *,int ) ;
 int * svn_error_trace (int ) ;
 int svn_hash_sets (int *,char const*,struct svn_wc__db_base_info_t*) ;
 char* svn_relpath_basename (char const*,int *) ;
 int svn_sqlite__bindf (int *,char*,int ,char const*) ;
 int svn_sqlite__column_boolean (int *,int) ;
 scalar_t__ svn_sqlite__column_int64 (int *,int) ;
 int svn_sqlite__column_revnum (int *,int) ;
 void* svn_sqlite__column_text (int *,int,int *) ;
 void* svn_sqlite__column_token (int *,int,int ) ;
 int svn_sqlite__column_token_null (int *,int,int ,int ) ;
 int svn_sqlite__get_statement (int **,int ,int ) ;
 int svn_sqlite__reset (int *) ;
 int svn_sqlite__step (scalar_t__*,int *) ;
 int * svn_wc__db_fetch_repos_info (char const**,int *,TYPE_1__*,scalar_t__,int *) ;

__attribute__((used)) static svn_error_t *
base_get_children_info(apr_hash_t **nodes,
                       svn_wc__db_wcroot_t *wcroot,
                       const char *local_relpath,
                       svn_boolean_t obtain_locks,
                       apr_pool_t *result_pool,
                       apr_pool_t *scratch_pool)
{
  svn_sqlite__stmt_t *stmt;
  svn_boolean_t have_row;
  apr_int64_t last_repos_id = INVALID_REPOS_ID;
  const char *last_repos_root_url = ((void*)0);

  *nodes = apr_hash_make(result_pool);

  SVN_ERR(svn_sqlite__get_statement(&stmt, wcroot->sdb,
                                    obtain_locks
                                      ? STMT_SELECT_BASE_CHILDREN_INFO_LOCK
                                      : STMT_SELECT_BASE_CHILDREN_INFO));
  SVN_ERR(svn_sqlite__bindf(stmt, "is", wcroot->wc_id, local_relpath));

  SVN_ERR(svn_sqlite__step(&have_row, stmt));

  while (have_row)
    {
      struct svn_wc__db_base_info_t *info;
      apr_int64_t repos_id;
      const char *child_relpath = svn_sqlite__column_text(stmt, 0, ((void*)0));
      const char *name = svn_relpath_basename(child_relpath, result_pool);

      info = apr_pcalloc(result_pool, sizeof(*info));

      repos_id = svn_sqlite__column_int64(stmt, 1);
      info->repos_relpath = svn_sqlite__column_text(stmt, 2, result_pool);
      info->status = svn_sqlite__column_token(stmt, 3, presence_map);
      info->kind = svn_sqlite__column_token(stmt, 4, kind_map);
      info->revnum = svn_sqlite__column_revnum(stmt, 5);

      info->depth = svn_sqlite__column_token_null(stmt, 6, depth_map,
                                                  svn_depth_unknown);

      info->update_root = svn_sqlite__column_boolean(stmt, 7);

      if (obtain_locks)
        info->lock = lock_from_columns(stmt, 8, 9, 10, 11, result_pool);

      if (repos_id != last_repos_id)
        {
          svn_error_t *err;

          err = svn_wc__db_fetch_repos_info(&last_repos_root_url, ((void*)0),
                                            wcroot, repos_id,
                                            result_pool);

          if (err)
            return svn_error_trace(
                     svn_error_compose_create(err,
                                              svn_sqlite__reset(stmt)));

          last_repos_id = repos_id;
        }

      info->repos_root_url = last_repos_root_url;

      svn_hash_sets(*nodes, name, info);

      SVN_ERR(svn_sqlite__step(&have_row, stmt));
    }

  SVN_ERR(svn_sqlite__reset(stmt));

  return SVN_NO_ERROR;
}
