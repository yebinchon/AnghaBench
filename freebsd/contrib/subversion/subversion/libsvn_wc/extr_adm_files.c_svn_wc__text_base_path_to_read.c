
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_wc__db_t ;
typedef scalar_t__ svn_wc__db_status_t ;
typedef scalar_t__ svn_node_kind_t ;
typedef int svn_error_t ;
typedef int svn_checksum_t ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int SVN_ERR_NODE_UNEXPECTED_KIND ;
 int SVN_ERR_WC_PATH_NOT_FOUND ;
 int SVN_ERR_WC_PATH_UNEXPECTED_STATUS ;
 int * SVN_NO_ERROR ;
 int _ (char*) ;
 int svn_dirent_local_style (char const*,int *) ;
 int * svn_error_createf (int ,int *,int ,int ) ;
 scalar_t__ svn_node_file ;
 int svn_wc__db_pristine_get_path (char const**,int *,char const*,int const*,int *,int *) ;
 int svn_wc__db_read_pristine_info (scalar_t__*,scalar_t__*,int *,int *,int *,int *,int const**,int *,int *,int *,int *,char const*,int *,int *) ;
 scalar_t__ svn_wc__db_status_excluded ;
 scalar_t__ svn_wc__db_status_incomplete ;
 scalar_t__ svn_wc__db_status_not_present ;
 scalar_t__ svn_wc__db_status_server_excluded ;

svn_error_t *
svn_wc__text_base_path_to_read(const char **result_abspath,
                               svn_wc__db_t *db,
                               const char *local_abspath,
                               apr_pool_t *result_pool,
                               apr_pool_t *scratch_pool)
{
  svn_wc__db_status_t status;
  svn_node_kind_t kind;
  const svn_checksum_t *checksum;

  SVN_ERR(svn_wc__db_read_pristine_info(&status, &kind, ((void*)0), ((void*)0), ((void*)0), ((void*)0),
                                        &checksum, ((void*)0), ((void*)0), ((void*)0),
                                        db, local_abspath,
                                        scratch_pool, scratch_pool));


  if (kind != svn_node_file)
    return svn_error_createf(SVN_ERR_NODE_UNEXPECTED_KIND, ((void*)0),
                             _("Can only get the pristine contents of files; "
                               "'%s' is not a file"),
                             svn_dirent_local_style(local_abspath,
                                                    scratch_pool));

  if (status == svn_wc__db_status_not_present)


    return svn_error_createf(SVN_ERR_WC_PATH_NOT_FOUND, ((void*)0),
                             _("Cannot get the pristine contents of '%s' "
                               "because its delete is already committed"),
                             svn_dirent_local_style(local_abspath,
                                                    scratch_pool));
  else if (status == svn_wc__db_status_server_excluded
      || status == svn_wc__db_status_excluded
      || status == svn_wc__db_status_incomplete)
    return svn_error_createf(SVN_ERR_WC_PATH_UNEXPECTED_STATUS, ((void*)0),
                             _("Cannot get the pristine contents of '%s' "
                               "because it has an unexpected status"),
                             svn_dirent_local_style(local_abspath,
                                                    scratch_pool));

  if (checksum == ((void*)0))
    return svn_error_createf(SVN_ERR_WC_PATH_UNEXPECTED_STATUS, ((void*)0),
                             _("Node '%s' has no pristine text"),
                             svn_dirent_local_style(local_abspath,
                                                    scratch_pool));
  SVN_ERR(svn_wc__db_pristine_get_path(result_abspath, db, local_abspath,
                                       checksum,
                                       result_pool, scratch_pool));
  return SVN_NO_ERROR;
}
