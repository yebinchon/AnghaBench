
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_sqlite__db_t ;
typedef int svn_revnum_t ;
typedef int svn_error_t ;
typedef int svn_depth_t ;
typedef int svn_boolean_t ;
typedef int apr_pool_t ;
typedef int apr_int64_t ;
typedef int apr_int32_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int SVN_SQLITE__WITH_LOCK (int ,int *) ;
 int init_db (int *,int *,int *,char const*,char const*,char const*,int ,int ,int *) ;
 int svn_sqlite__mode_rwcreate ;
 int svn_wc__db_util_open_db (int **,char const*,char const*,int ,int ,int ,int *,int *,int *) ;

__attribute__((used)) static svn_error_t *
create_db(svn_sqlite__db_t **sdb,
          apr_int64_t *repos_id,
          apr_int64_t *wc_id,
          const char *dir_abspath,
          const char *repos_root_url,
          const char *repos_uuid,
          const char *sdb_fname,
          const char *root_node_repos_relpath,
          svn_revnum_t root_node_revision,
          svn_depth_t root_node_depth,
          svn_boolean_t exclusive,
          apr_int32_t timeout,
          apr_pool_t *result_pool,
          apr_pool_t *scratch_pool)
{
  SVN_ERR(svn_wc__db_util_open_db(sdb, dir_abspath, sdb_fname,
                                  svn_sqlite__mode_rwcreate, exclusive,
                                  timeout,
                                  ((void*)0) ,
                                  result_pool, scratch_pool));

  SVN_SQLITE__WITH_LOCK(init_db(repos_id, wc_id,
                                *sdb, repos_root_url, repos_uuid,
                                root_node_repos_relpath, root_node_revision,
                                root_node_depth, scratch_pool),
                        *sdb);

  return SVN_NO_ERROR;
}
