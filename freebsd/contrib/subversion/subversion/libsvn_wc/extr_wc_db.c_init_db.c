
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_wc__db_status_t ;
typedef int svn_sqlite__stmt_t ;
typedef int svn_sqlite__db_t ;
typedef scalar_t__ svn_revnum_t ;
typedef int svn_error_t ;
typedef int svn_depth_t ;
typedef int apr_pool_t ;
typedef int apr_int64_t ;


 int STMT_CREATE_SCHEMA ;
 int STMT_INSERT_NODE ;
 int STMT_INSERT_WCROOT ;
 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int SVN_VA_NULL ;
 int create_repos_id (int *,char const*,char const*,int *,int *) ;
 int depth_map ;
 int kind_map ;
 int presence_map ;
 int svn_node_dir ;
 int svn_sqlite__bindf (int *,char*,int ,char*,int ,int ,int ,char const*,scalar_t__,int ,int ,int ,int ,int ) ;
 int svn_sqlite__exec_statements (int *,int ) ;
 int svn_sqlite__get_statement (int **,int *,int ) ;
 int svn_sqlite__insert (int *,int *) ;
 int svn_token__to_word (int ,int ) ;
 int svn_wc__db_install_schema_statistics (int *,int *) ;
 int svn_wc__db_status_incomplete ;
 int svn_wc__db_status_normal ;

__attribute__((used)) static svn_error_t *
init_db(
        apr_int64_t *repos_id,
        apr_int64_t *wc_id,

        svn_sqlite__db_t *db,
        const char *repos_root_url,
        const char *repos_uuid,
        const char *root_node_repos_relpath,
        svn_revnum_t root_node_revision,
        svn_depth_t root_node_depth,
        apr_pool_t *scratch_pool)
{
  svn_sqlite__stmt_t *stmt;


  SVN_ERR(svn_sqlite__exec_statements(db, STMT_CREATE_SCHEMA));

  SVN_ERR(svn_wc__db_install_schema_statistics(db, scratch_pool));


  SVN_ERR(create_repos_id(repos_id, repos_root_url, repos_uuid,
                          db, scratch_pool));



  SVN_ERR(svn_sqlite__get_statement(&stmt, db, STMT_INSERT_WCROOT));
  SVN_ERR(svn_sqlite__insert(wc_id, stmt));

  if (root_node_repos_relpath)
    {
      svn_wc__db_status_t status = svn_wc__db_status_normal;

      if (root_node_revision > 0)
        status = svn_wc__db_status_incomplete;

      SVN_ERR(svn_sqlite__get_statement(&stmt, db, STMT_INSERT_NODE));
      SVN_ERR(svn_sqlite__bindf(stmt, "isdsisrtst",
                                *wc_id,
                                "",
                                0,
                                SVN_VA_NULL,
                                *repos_id,
                                root_node_repos_relpath,
                                root_node_revision,
                                presence_map, status,
                                svn_token__to_word(depth_map,
                                                   root_node_depth),
                                kind_map, svn_node_dir ));

      SVN_ERR(svn_sqlite__insert(((void*)0), stmt));
    }

  return SVN_NO_ERROR;
}
