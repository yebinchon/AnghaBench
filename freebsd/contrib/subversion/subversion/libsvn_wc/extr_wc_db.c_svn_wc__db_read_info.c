
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
typedef int svn_filesize_t ;
typedef int svn_error_t ;
typedef int svn_depth_t ;
typedef int svn_checksum_t ;
typedef int svn_boolean_t ;
typedef int apr_time_t ;
typedef int apr_pool_t ;
typedef int apr_int64_t ;


 int SVN_ERR (int ) ;
 int SVN_ERR_ASSERT (int ) ;
 int * SVN_NO_ERROR ;
 int SVN_WC__DB_WITH_TXN4 (int ,int ,int ,int *,int *) ;
 int VERIFY_USABLE_WCROOT (int *) ;
 int read_info (int *,int *,int *,char const**,int *,int *,int *,char const**,int *,int const**,char const**,char const**,int *,int *,int **,int *,int *,char const**,int *,int *,int *,int *,int *,int *,int *,int *,char const*,int *,int *) ;
 int svn_dirent_is_absolute (char const*) ;
 int svn_wc__db_fetch_repos_info (char const**,char const**,int *,int ,int *) ;
 int svn_wc__db_wcroot_parse_local_abspath (int **,char const**,int *,char const*,int *,int *) ;

svn_error_t *
svn_wc__db_read_info(svn_wc__db_status_t *status,
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
                     const char **original_repos_relpath,
                     const char **original_root_url,
                     const char **original_uuid,
                     svn_revnum_t *original_revision,
                     svn_wc__db_lock_t **lock,
                     svn_filesize_t *recorded_size,
                     apr_time_t *recorded_time,
                     const char **changelist,
                     svn_boolean_t *conflicted,
                     svn_boolean_t *op_root,
                     svn_boolean_t *have_props,
                     svn_boolean_t *props_mod,
                     svn_boolean_t *have_base,
                     svn_boolean_t *have_more_work,
                     svn_boolean_t *have_work,
                     svn_wc__db_t *db,
                     const char *local_abspath,
                     apr_pool_t *result_pool,
                     apr_pool_t *scratch_pool)
{
  svn_wc__db_wcroot_t *wcroot;
  const char *local_relpath;
  apr_int64_t repos_id, original_repos_id;

  SVN_ERR_ASSERT(svn_dirent_is_absolute(local_abspath));

  SVN_ERR(svn_wc__db_wcroot_parse_local_abspath(&wcroot, &local_relpath, db,
                              local_abspath, scratch_pool, scratch_pool));
  VERIFY_USABLE_WCROOT(wcroot);

  SVN_WC__DB_WITH_TXN4(
          read_info(status, kind, revision, repos_relpath, &repos_id,
                    changed_rev, changed_date, changed_author,
                    depth, checksum, target, original_repos_relpath,
                    &original_repos_id, original_revision, lock,
                    recorded_size, recorded_time, changelist, conflicted,
                    op_root, have_props, props_mod,
                    have_base, have_more_work, have_work,
                    wcroot, local_relpath, result_pool, scratch_pool),
          svn_wc__db_fetch_repos_info(repos_root_url, repos_uuid,
                                      wcroot, repos_id, result_pool),
          svn_wc__db_fetch_repos_info(original_root_url, original_uuid,
                                      wcroot, original_repos_id,
                                      result_pool),
        SVN_NO_ERROR,
        wcroot);

  return SVN_NO_ERROR;
}
