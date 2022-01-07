
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int wc_id; int sdb; } ;
typedef TYPE_1__ svn_wc__db_wcroot_t ;
typedef scalar_t__ svn_wc__db_status_t ;
typedef int svn_sqlite__stmt_t ;
typedef int svn_error_t ;
typedef int svn_boolean_t ;
typedef int apr_pool_t ;
typedef int apr_int64_t ;


 int STMT_SELECT_NODE_INFO ;
 int SVN_ERR (int *) ;
 int SVN_ERR_ASSERT (int) ;
 int SVN_ERR_WC_PATH_NOT_FOUND ;
 int * SVN_NO_ERROR ;
 int _ (char*) ;
 int path_for_error_message (TYPE_1__*,char const*,int *) ;
 int presence_map ;
 int * svn_error_createf (int ,int *,int ,int ) ;
 int * svn_error_trace (int *) ;
 char* svn_relpath_join (char const*,char const*,int *) ;
 int svn_relpath_split (char const**,char const**,char const*,int *) ;
 int * svn_sqlite__bindf (int *,char*,int ,char const*) ;
 int svn_sqlite__column_int (int *,int ) ;
 int svn_sqlite__column_int64 (int *,int) ;
 int svn_sqlite__column_is_null (int *,int) ;
 char* svn_sqlite__column_text (int *,int,int *) ;
 scalar_t__ svn_sqlite__column_token (int *,int,int ) ;
 int * svn_sqlite__get_statement (int **,int ,int ) ;
 int * svn_sqlite__reset (int *) ;
 int * svn_sqlite__step (int *,int *) ;
 int * svn_sqlite__step_row (int *) ;
 scalar_t__ svn_wc__db_status_base_deleted ;

__attribute__((used)) static svn_error_t *
determine_commit_repos_info(apr_int64_t *repos_id,
                            const char **repos_relpath,
                            svn_wc__db_wcroot_t *wcroot,
                            const char *local_relpath,
                            apr_pool_t *result_pool,
                            apr_pool_t *scratch_pool)
{
  svn_sqlite__stmt_t *stmt;
  svn_boolean_t have_row;
  int op_depth;


  SVN_ERR(svn_sqlite__get_statement(&stmt, wcroot->sdb,
                                    STMT_SELECT_NODE_INFO));
  SVN_ERR(svn_sqlite__bindf(stmt, "is", wcroot->wc_id, local_relpath));
  SVN_ERR(svn_sqlite__step(&have_row, stmt));

  if (!have_row)
    return svn_error_createf(SVN_ERR_WC_PATH_NOT_FOUND,
                             svn_sqlite__reset(stmt),
                             _("The node '%s' was not found."),
                             path_for_error_message(wcroot, local_relpath,
                                                    scratch_pool));

  op_depth = svn_sqlite__column_int(stmt, 0);

  if (op_depth > 0)
    {
      svn_wc__db_status_t presence = svn_sqlite__column_token(stmt, 3,
                                                              presence_map);

      if (presence == svn_wc__db_status_base_deleted)
        {
          SVN_ERR(svn_sqlite__step_row(stmt));
          op_depth = svn_sqlite__column_int(stmt, 0);
        }
      else
        {
          const char *parent_repos_relpath;
          const char *parent_relpath;
          const char *name;

          SVN_ERR(svn_sqlite__reset(stmt));
          svn_relpath_split(&parent_relpath, &name, local_relpath,
                            scratch_pool);

          SVN_ERR(determine_commit_repos_info(repos_id, &parent_repos_relpath,
                                              wcroot, parent_relpath,
                                              scratch_pool, scratch_pool));

          *repos_relpath = svn_relpath_join(parent_repos_relpath, name,
                                            result_pool);
          return SVN_NO_ERROR;
        }
    }


  SVN_ERR_ASSERT(op_depth == 0);

  SVN_ERR_ASSERT(!svn_sqlite__column_is_null(stmt, 1));
  SVN_ERR_ASSERT(!svn_sqlite__column_is_null(stmt, 2));

  *repos_id = svn_sqlite__column_int64(stmt, 1);
  *repos_relpath = svn_sqlite__column_text(stmt, 2, result_pool);

  return svn_error_trace(svn_sqlite__reset(stmt));
}
