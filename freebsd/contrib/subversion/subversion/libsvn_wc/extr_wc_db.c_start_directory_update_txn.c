
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
typedef int apr_pool_t ;


 int STMT_UPDATE_BASE_NODE_PRESENCE_REVNUM_AND_REPOS_PATH ;
 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int presence_map ;
 int svn_sqlite__bindf (int *,char*,int ,char const*,int ,int ,int ,char const*) ;
 int svn_sqlite__get_statement (int **,int ,int ) ;
 int svn_sqlite__step_done (int *) ;
 int svn_wc__db_status_incomplete ;

__attribute__((used)) static svn_error_t *
start_directory_update_txn(svn_wc__db_wcroot_t *wcroot,
                           const char *local_relpath,
                           const char *new_repos_relpath,
                           svn_revnum_t new_rev,
                           apr_pool_t *scratch_pool)
{
  svn_sqlite__stmt_t *stmt;



  SVN_ERR(svn_sqlite__get_statement(&stmt, wcroot->sdb,
                    STMT_UPDATE_BASE_NODE_PRESENCE_REVNUM_AND_REPOS_PATH));

  SVN_ERR(svn_sqlite__bindf(stmt, "istrs",
                            wcroot->wc_id,
                            local_relpath,
                            presence_map, svn_wc__db_status_incomplete,
                            new_rev,
                            new_repos_relpath));
  SVN_ERR(svn_sqlite__step_done(stmt));

  return SVN_NO_ERROR;

}
