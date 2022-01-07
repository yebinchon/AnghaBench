
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_1__ ;


typedef int svn_wc__internal_status_t ;
typedef int svn_wc__db_t ;
typedef int svn_io_dirent2_t ;
struct TYPE_9__ {scalar_t__ apr_err; } ;
typedef TYPE_1__ svn_error_t ;
typedef scalar_t__ svn_boolean_t ;
struct svn_wc__db_info_t {scalar_t__ kind; scalar_t__ status; scalar_t__ conflicted; } ;
typedef int apr_pool_t ;


 scalar_t__ FALSE ;
 int SVN_ERR (int ) ;
 int SVN_ERR_ASSERT (int ) ;
 scalar_t__ SVN_ERR_WC_PATH_NOT_FOUND ;
 scalar_t__ TRUE ;
 TYPE_1__* assemble_status (int **,int *,char const*,char const*,char const*,char const*,struct svn_wc__db_info_t const*,int const*,scalar_t__,scalar_t__,scalar_t__,int *,int *,int *) ;
 TYPE_1__* assemble_unversioned (int **,int *,char const*,int const*,scalar_t__,scalar_t__,int *,int *) ;
 int stat_wc_dirent_case_sensitive (int const**,int *,char const*,int *,int *) ;
 int strlen (char const*) ;
 char* svn_dirent_dirname (char const*,int *) ;
 int svn_dirent_is_absolute (char const*) ;
 scalar_t__ svn_dirent_is_root (char const*,int ) ;
 int svn_error_clear (TYPE_1__*) ;
 TYPE_1__* svn_error_trace (TYPE_1__*) ;
 int svn_io_stat_dirent2 (int const**,char const*,scalar_t__,scalar_t__,int *,int *) ;
 scalar_t__ svn_node_unknown ;
 int svn_wc__db_base_get_info (int *,int *,int *,char const**,char const**,char const**,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,char const* const,int *,int *) ;
 int svn_wc__db_is_wcroot (scalar_t__*,int *,char const*,int *) ;
 int svn_wc__db_read_info (int *,int *,int *,char const**,char const**,char const**,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,char const* const,int *,int *) ;
 TYPE_1__* svn_wc__db_read_single_info (struct svn_wc__db_info_t const**,int *,char const*,int,int *,int *) ;
 scalar_t__ svn_wc__db_status_excluded ;
 scalar_t__ svn_wc__db_status_not_present ;
 scalar_t__ svn_wc__db_status_server_excluded ;

__attribute__((used)) static svn_error_t *
internal_status(svn_wc__internal_status_t **status,
                svn_wc__db_t *db,
                const char *local_abspath,
                svn_boolean_t check_working_copy,
                apr_pool_t *result_pool,
                apr_pool_t *scratch_pool)
{
  const svn_io_dirent2_t *dirent = ((void*)0);
  const char *parent_repos_relpath;
  const char *parent_repos_root_url;
  const char *parent_repos_uuid;
  const struct svn_wc__db_info_t *info;
  svn_boolean_t is_root = FALSE;
  svn_error_t *err;

  SVN_ERR_ASSERT(svn_dirent_is_absolute(local_abspath));

  err = svn_wc__db_read_single_info(&info, db, local_abspath,
                                    !check_working_copy,
                                    scratch_pool, scratch_pool);

  if (err)
    {
      if (err->apr_err != SVN_ERR_WC_PATH_NOT_FOUND)
        return svn_error_trace(err);

      svn_error_clear(err);
      info = ((void*)0);

      if (check_working_copy)
        SVN_ERR(svn_io_stat_dirent2(&dirent, local_abspath, FALSE, TRUE,
                                    scratch_pool, scratch_pool));
    }
  else if (check_working_copy)
    SVN_ERR(stat_wc_dirent_case_sensitive(&dirent, db, local_abspath,
                                          scratch_pool, scratch_pool));

  if (!info
      || info->kind == svn_node_unknown
      || info->status == svn_wc__db_status_not_present
      || info->status == svn_wc__db_status_server_excluded
      || info->status == svn_wc__db_status_excluded)
    return svn_error_trace(assemble_unversioned(status,
                                                db, local_abspath,
                                                dirent,
                                                info ? info->conflicted : FALSE,
                                                FALSE ,
                                                result_pool, scratch_pool));

  if (svn_dirent_is_root(local_abspath, strlen(local_abspath)))
    is_root = TRUE;
  else
    SVN_ERR(svn_wc__db_is_wcroot(&is_root, db, local_abspath, scratch_pool));



  if (!is_root)
    {
      const char *const parent_abspath = svn_dirent_dirname(local_abspath,
                                                            scratch_pool);
      if (check_working_copy)
        SVN_ERR(svn_wc__db_read_info(((void*)0), ((void*)0), ((void*)0),
                                     &parent_repos_relpath,
                                     &parent_repos_root_url,
                                     &parent_repos_uuid,
                                     ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0),
                                     ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0),
                                     ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0),
                                     db, parent_abspath,
                                     result_pool, scratch_pool));
      else
        SVN_ERR(svn_wc__db_base_get_info(((void*)0), ((void*)0), ((void*)0),
                                         &parent_repos_relpath,
                                         &parent_repos_root_url,
                                         &parent_repos_uuid,
                                         ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0),
                                         ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0),
                                         db, parent_abspath,
                                         result_pool, scratch_pool));
    }
  else
    {
      parent_repos_root_url = ((void*)0);
      parent_repos_relpath = ((void*)0);
      parent_repos_uuid = ((void*)0);
    }

  return svn_error_trace(assemble_status(status, db, local_abspath,
                                         parent_repos_root_url,
                                         parent_repos_relpath,
                                         parent_repos_uuid,
                                         info,
                                         dirent,
                                         TRUE ,
                                         FALSE, check_working_copy,
                                         ((void*)0) ,
                                         result_pool, scratch_pool));
}
