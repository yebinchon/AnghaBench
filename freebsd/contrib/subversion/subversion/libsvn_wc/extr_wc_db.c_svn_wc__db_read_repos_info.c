
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_wc__db_wcroot_t ;
typedef int svn_wc__db_t ;
typedef int svn_revnum_t ;
typedef int svn_error_t ;
typedef int apr_pool_t ;
typedef int apr_int64_t ;


 int INVALID_REPOS_ID ;
 int SVN_ERR (int ) ;
 int SVN_ERR_ASSERT (int ) ;
 int * SVN_NO_ERROR ;
 int SVN_WC__DB_WITH_TXN4 (int ,int ,int *,int *,int *) ;
 int VERIFY_USABLE_WCROOT (int *) ;
 int db_read_repos_info (int *,char const**,int *,int *,char const*,int *,int *) ;
 int svn_dirent_is_absolute (char const*) ;
 int svn_wc__db_fetch_repos_info (char const**,char const**,int *,int ,int *) ;
 int svn_wc__db_wcroot_parse_local_abspath (int **,char const**,int *,char const*,int *,int *) ;

svn_error_t *
svn_wc__db_read_repos_info(svn_revnum_t *revision,
                           const char **repos_relpath,
                           const char **repos_root_url,
                           const char **repos_uuid,
                           svn_wc__db_t *db,
                           const char *local_abspath,
                           apr_pool_t *result_pool,
                           apr_pool_t *scratch_pool)
{
  svn_wc__db_wcroot_t *wcroot;
  const char *local_relpath;
  apr_int64_t repos_id = INVALID_REPOS_ID;

  SVN_ERR_ASSERT(svn_dirent_is_absolute(local_abspath));

  SVN_ERR(svn_wc__db_wcroot_parse_local_abspath(&wcroot, &local_relpath, db,
                                                local_abspath,
                                                scratch_pool, scratch_pool));
  VERIFY_USABLE_WCROOT(wcroot);

  SVN_WC__DB_WITH_TXN4(db_read_repos_info(revision, repos_relpath,
                                          (repos_root_url || repos_uuid)
                                            ? &repos_id : ((void*)0),
                                          wcroot, local_relpath,
                                          result_pool, scratch_pool),
                       svn_wc__db_fetch_repos_info(repos_root_url,
                                                   repos_uuid,
                                                   wcroot, repos_id,
                                                   result_pool),
                       SVN_NO_ERROR, SVN_NO_ERROR,
                       wcroot);

  return SVN_NO_ERROR;
}
