
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_wc__db_t ;
typedef scalar_t__ svn_wc__db_status_t ;
typedef int svn_revnum_t ;
typedef int svn_error_t ;
typedef int svn_depth_t ;
typedef scalar_t__ svn_boolean_t ;
typedef int apr_pool_t ;


 scalar_t__ FALSE ;
 int SVN_ERR (int ) ;
 int SVN_ERR_WC_PATH_UNEXPECTED_STATUS ;
 int * SVN_NO_ERROR ;
 scalar_t__ TRUE ;
 int _ (char*) ;
 char* apr_pstrdup (int *,char const*) ;
 int svn_dirent_local_style (char const*,int *) ;
 int svn_dirent_skip_ancestor (char const*,char const*) ;
 int * svn_error_createf (int ,int *,int ,int ) ;
 char* svn_relpath_join (char const*,int ,int *) ;
 int svn_wc__db_base_get_info (int *,int *,int *,char const**,char const**,char const**,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,char const*,int *,int *) ;
 int svn_wc__db_read_info (scalar_t__*,int *,int *,char const**,char const**,char const**,int *,int *,int *,int *,int *,int *,char const**,char const**,char const**,int *,int *,int *,int *,int *,int *,scalar_t__*,int *,int *,int *,scalar_t__*,scalar_t__*,int *,char const*,int *,int *) ;
 int svn_wc__db_scan_addition (scalar_t__*,char const**,int *,int *,int *,char const**,char const**,char const**,int *,int *,char const*,int *,int *) ;
 scalar_t__ svn_wc__db_status_added ;
 scalar_t__ svn_wc__db_status_deleted ;
 scalar_t__ svn_wc__db_status_incomplete ;

svn_error_t *
svn_wc__internal_get_origin(svn_boolean_t *is_copy,
                            svn_revnum_t *revision,
                            const char **repos_relpath,
                            const char **repos_root_url,
                            const char **repos_uuid,
                            svn_depth_t *depth,
                            const char **copy_root_abspath,
                            svn_wc__db_t *db,
                            const char *local_abspath,
                            svn_boolean_t scan_deleted,
                            apr_pool_t *result_pool,
                            apr_pool_t *scratch_pool)
{
  const char *original_repos_relpath;
  const char *original_repos_root_url;
  const char *original_repos_uuid;
  svn_revnum_t original_revision;
  svn_wc__db_status_t status;
  svn_boolean_t have_more_work;
  svn_boolean_t op_root;

  const char *tmp_repos_relpath;

  if (copy_root_abspath)
    *copy_root_abspath = ((void*)0);
  if (!repos_relpath)
    repos_relpath = &tmp_repos_relpath;

  SVN_ERR(svn_wc__db_read_info(&status, ((void*)0), revision, repos_relpath,
                               repos_root_url, repos_uuid, ((void*)0), ((void*)0), ((void*)0),
                               depth, ((void*)0), ((void*)0),
                               &original_repos_relpath,
                               &original_repos_root_url,
                               &original_repos_uuid, &original_revision,
                               ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0), &op_root, ((void*)0),
                               ((void*)0), ((void*)0), &have_more_work, is_copy,
                               db, local_abspath, result_pool, scratch_pool));

  if (*repos_relpath)
    {
      return SVN_NO_ERROR;
    }

  if (status == svn_wc__db_status_deleted && !scan_deleted)
    {
      if (is_copy)
        *is_copy = FALSE;

      return SVN_NO_ERROR;
    }

  if (original_repos_relpath)
    {

      *repos_relpath = original_repos_relpath;
      if (revision)
        *revision = original_revision;
      if (repos_root_url)
        *repos_root_url = original_repos_root_url;
      if (repos_uuid)
        *repos_uuid = original_repos_uuid;

      if (copy_root_abspath == ((void*)0))
        return SVN_NO_ERROR;
      else if (op_root)
        {
          *copy_root_abspath = apr_pstrdup(result_pool, local_abspath);
          return SVN_NO_ERROR;
        }
    }

  {
    svn_boolean_t scan_working = FALSE;

    if (status == svn_wc__db_status_added
        || (status == svn_wc__db_status_deleted && have_more_work))
      scan_working = TRUE;

    if (scan_working)
      {
        const char *op_root_abspath;

        SVN_ERR(svn_wc__db_scan_addition(&status, &op_root_abspath, ((void*)0),
                                         ((void*)0), ((void*)0), &original_repos_relpath,
                                         repos_root_url,
                                         repos_uuid, revision,
                                         db, local_abspath,
                                         result_pool, scratch_pool));

        if (status == svn_wc__db_status_added)
          {
            if (is_copy)
              *is_copy = FALSE;
            return SVN_NO_ERROR;
          }




        if (status == svn_wc__db_status_incomplete && !original_repos_relpath)
          return svn_error_createf(SVN_ERR_WC_PATH_UNEXPECTED_STATUS, ((void*)0),
                               _("Incomplete copy information on path '%s'."),
                                   svn_dirent_local_style(local_abspath,
                                                          scratch_pool));

        *repos_relpath = svn_relpath_join(
                                original_repos_relpath,
                                svn_dirent_skip_ancestor(op_root_abspath,
                                                         local_abspath),
                                result_pool);
        if (copy_root_abspath)
          *copy_root_abspath = op_root_abspath;
      }
    else
      {
        if (is_copy)
          *is_copy = FALSE;

        SVN_ERR(svn_wc__db_base_get_info(((void*)0), ((void*)0), revision, repos_relpath,
                                         repos_root_url, repos_uuid, ((void*)0),
                                         ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0),
                                         ((void*)0), ((void*)0), ((void*)0),
                                         db, local_abspath,
                                         result_pool, scratch_pool));
      }

    return SVN_NO_ERROR;
  }
}
