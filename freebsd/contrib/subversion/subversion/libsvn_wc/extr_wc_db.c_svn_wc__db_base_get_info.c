
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_wc__db_wcroot_t ;
typedef int svn_wc__db_t ;
typedef int svn_wc__db_status_t ;
typedef int svn_wc__db_lock_t ;
typedef int svn_revnum_t ;
typedef int svn_node_kind_t ;
typedef int svn_error_t ;
typedef int svn_depth_t ;
typedef int svn_checksum_t ;
typedef int svn_boolean_t ;
typedef int apr_time_t ;
typedef int apr_pool_t ;
typedef scalar_t__ apr_int64_t ;
typedef int apr_hash_t ;


 scalar_t__ INVALID_REPOS_ID ;
 int SVN_ERR (int ) ;
 int SVN_ERR_ASSERT (int) ;
 int * SVN_NO_ERROR ;
 int SVN_WC__DB_WITH_TXN4 (int ,int ,int *,int *,int *) ;
 int VERIFY_USABLE_WCROOT (int *) ;
 int svn_dirent_is_absolute (char const*) ;
 int svn_wc__db_base_get_info_internal (int *,int *,int *,char const**,scalar_t__*,int *,int *,char const**,int *,int const**,char const**,int **,int *,int **,int *,int *,char const*,int *,int *) ;
 int svn_wc__db_fetch_repos_info (char const**,char const**,int *,scalar_t__,int *) ;
 int svn_wc__db_wcroot_parse_local_abspath (int **,char const**,int *,char const*,int *,int *) ;

svn_error_t *
svn_wc__db_base_get_info(svn_wc__db_status_t *status,
                         svn_node_kind_t *kind,
                         svn_revnum_t *revision,
                         const char **repos_relpath,
                         const char **repos_root_url,
                         const char **repos_uuid,
                         svn_revnum_t *changed_rev,
                         apr_time_t *changed_date,
                         const char **changed_author,
                         svn_depth_t *depth,
                         const svn_checksum_t **checksum,
                         const char **target,
                         svn_wc__db_lock_t **lock,
                         svn_boolean_t *had_props,
                         apr_hash_t **props,
                         svn_boolean_t *update_root,
                         svn_wc__db_t *db,
                         const char *local_abspath,
                         apr_pool_t *result_pool,
                         apr_pool_t *scratch_pool)
{
  svn_wc__db_wcroot_t *wcroot;
  const char *local_relpath;
  apr_int64_t repos_id;

  SVN_ERR_ASSERT(svn_dirent_is_absolute(local_abspath));

  SVN_ERR(svn_wc__db_wcroot_parse_local_abspath(&wcroot, &local_relpath, db,
                              local_abspath, scratch_pool, scratch_pool));
  VERIFY_USABLE_WCROOT(wcroot);

  SVN_WC__DB_WITH_TXN4(
          svn_wc__db_base_get_info_internal(status, kind, revision,
                                            repos_relpath, &repos_id,
                                            changed_rev, changed_date,
                                            changed_author, depth,
                                            checksum, target, lock,
                                            had_props, props, update_root,
                                            wcroot, local_relpath,
                                            result_pool, scratch_pool),
          svn_wc__db_fetch_repos_info(repos_root_url, repos_uuid,
                                      wcroot, repos_id, result_pool),
          SVN_NO_ERROR,
          SVN_NO_ERROR,
          wcroot);
  SVN_ERR_ASSERT(repos_id != INVALID_REPOS_ID);

  return SVN_NO_ERROR;
}
