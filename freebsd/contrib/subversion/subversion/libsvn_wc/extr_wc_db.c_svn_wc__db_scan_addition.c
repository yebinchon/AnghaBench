
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int abspath; } ;
typedef TYPE_1__ svn_wc__db_wcroot_t ;
typedef int svn_wc__db_t ;
typedef int svn_wc__db_status_t ;
typedef int svn_revnum_t ;
typedef int svn_error_t ;
typedef int apr_pool_t ;
typedef int apr_int64_t ;


 int INVALID_REPOS_ID ;
 int SVN_ERR (int ) ;
 int SVN_ERR_ASSERT (int) ;
 int * SVN_NO_ERROR ;
 int SVN_WC__DB_WITH_TXN4 (int ,int ,int ,int *,TYPE_1__*) ;
 int VERIFY_USABLE_WCROOT (TYPE_1__*) ;
 int scan_addition (int *,char const**,char const**,int *,char const**,int *,int *,int *,int *,int *,TYPE_1__*,char const*,int *,int *) ;
 int svn_dirent_is_absolute (char const*) ;
 char* svn_dirent_join (int ,char const*,int *) ;
 int svn_wc__db_fetch_repos_info (char const**,char const**,TYPE_1__*,int ,int *) ;
 int svn_wc__db_wcroot_parse_local_abspath (TYPE_1__**,char const**,int *,char const*,int *,int *) ;

svn_error_t *
svn_wc__db_scan_addition(svn_wc__db_status_t *status,
                         const char **op_root_abspath,
                         const char **repos_relpath,
                         const char **repos_root_url,
                         const char **repos_uuid,
                         const char **original_repos_relpath,
                         const char **original_root_url,
                         const char **original_uuid,
                         svn_revnum_t *original_revision,
                         svn_wc__db_t *db,
                         const char *local_abspath,
                         apr_pool_t *result_pool,
                         apr_pool_t *scratch_pool)
{
  svn_wc__db_wcroot_t *wcroot;
  const char *local_relpath;
  const char *op_root_relpath = ((void*)0);
  apr_int64_t repos_id = INVALID_REPOS_ID;
  apr_int64_t original_repos_id = INVALID_REPOS_ID;
  apr_int64_t *repos_id_p
    = (repos_root_url || repos_uuid) ? &repos_id : ((void*)0);
  apr_int64_t *original_repos_id_p
    = (original_root_url || original_uuid) ? &original_repos_id : ((void*)0);

  SVN_ERR_ASSERT(svn_dirent_is_absolute(local_abspath));

  SVN_ERR(svn_wc__db_wcroot_parse_local_abspath(&wcroot, &local_relpath, db,
                              local_abspath, scratch_pool, scratch_pool));
  VERIFY_USABLE_WCROOT(wcroot);

  SVN_WC__DB_WITH_TXN4(
          scan_addition(status,
                        op_root_abspath
                                ? &op_root_relpath
                                : ((void*)0),
                        repos_relpath, repos_id_p,
                        original_repos_relpath, original_repos_id_p,
                        original_revision,
                        ((void*)0), ((void*)0), ((void*)0),
                        wcroot, local_relpath, result_pool, scratch_pool),
          svn_wc__db_fetch_repos_info(repos_root_url, repos_uuid, wcroot,
                                      repos_id, result_pool),
          svn_wc__db_fetch_repos_info(original_root_url, original_uuid,
                                      wcroot, original_repos_id,
                                      result_pool),
          SVN_NO_ERROR,
          wcroot);

  if (op_root_abspath)
    *op_root_abspath = svn_dirent_join(wcroot->abspath, op_root_relpath,
                                       result_pool);

  SVN_ERR_ASSERT(repos_id_p == ((void*)0) || repos_id != INVALID_REPOS_ID);

  return SVN_NO_ERROR;
}
