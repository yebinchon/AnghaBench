
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_wc__db_t ;
typedef scalar_t__ svn_wc__db_status_t ;
typedef scalar_t__ svn_node_kind_t ;
typedef int svn_error_t ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int SVN_ERR_ENTRY_NOT_FOUND ;
 int SVN_ERR_NODE_UNEXPECTED_KIND ;
 int SVN_ERR_WC_SCHEDULE_CONFLICT ;
 int * SVN_NO_ERROR ;
 int _ (char*) ;
 char* svn_dirent_dirname (char const*,int *) ;
 int svn_dirent_local_style (char const*,int *) ;
 int * svn_error_createf (int ,int *,int ,int ) ;
 scalar_t__ svn_node_dir ;
 int svn_wc__db_base_get_info (int *,int *,int *,int *,char const**,char const**,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,char const*,int *,int *) ;
 int * svn_wc__db_read_info (scalar_t__*,scalar_t__*,int *,int *,char const**,char const**,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,char const*,int *,int *) ;
 int svn_wc__db_scan_addition (int *,int *,int *,char const**,char const**,int *,int *,int *,int *,int *,char const*,int *,int *) ;
 scalar_t__ svn_wc__db_status_added ;
 scalar_t__ svn_wc__db_status_deleted ;
 scalar_t__ svn_wc__db_status_excluded ;
 scalar_t__ svn_wc__db_status_not_present ;
 scalar_t__ svn_wc__db_status_server_excluded ;
 int svn_wc__write_check (int *,char const*,int *) ;

__attribute__((used)) static svn_error_t *
check_can_add_to_parent(const char **repos_root_url,
                        const char **repos_uuid,
                        svn_wc__db_t *db,
                        const char *local_abspath,
                        apr_pool_t *result_pool,
                        apr_pool_t *scratch_pool)
{
  const char *parent_abspath = svn_dirent_dirname(local_abspath, scratch_pool);
  svn_wc__db_status_t parent_status;
  svn_node_kind_t parent_kind;
  svn_error_t *err;

  SVN_ERR(svn_wc__write_check(db, parent_abspath, scratch_pool));

  err = svn_wc__db_read_info(&parent_status, &parent_kind, ((void*)0),
                             ((void*)0), repos_root_url, repos_uuid, ((void*)0), ((void*)0),
                             ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0),
                             ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0),
                             ((void*)0), ((void*)0), ((void*)0),
                             db, parent_abspath, result_pool, scratch_pool);

  if (err
      || parent_status == svn_wc__db_status_not_present
      || parent_status == svn_wc__db_status_excluded
      || parent_status == svn_wc__db_status_server_excluded)
    {
      return
        svn_error_createf(SVN_ERR_ENTRY_NOT_FOUND, err,
                          _("Can't find parent directory's node while"
                            " trying to add '%s'"),
                          svn_dirent_local_style(local_abspath,
                                                 scratch_pool));
    }
  else if (parent_status == svn_wc__db_status_deleted)
    {
      return
        svn_error_createf(SVN_ERR_WC_SCHEDULE_CONFLICT, ((void*)0),
                          _("Can't add '%s' to a parent directory"
                            " scheduled for deletion"),
                          svn_dirent_local_style(local_abspath,
                                                 scratch_pool));
    }
  else if (parent_kind != svn_node_dir)
    return svn_error_createf(SVN_ERR_NODE_UNEXPECTED_KIND, ((void*)0),
                             _("Can't schedule an addition of '%s'"
                               " below a not-directory node"),
                             svn_dirent_local_style(local_abspath,
                                                    scratch_pool));


  if ((repos_root_url && ! *repos_root_url)
      || (repos_uuid && ! *repos_uuid))
    {
      if (parent_status == svn_wc__db_status_added)
        SVN_ERR(svn_wc__db_scan_addition(((void*)0), ((void*)0), ((void*)0),
                                         repos_root_url, repos_uuid, ((void*)0),
                                         ((void*)0), ((void*)0), ((void*)0),
                                         db, parent_abspath,
                                         result_pool, scratch_pool));
      else
        SVN_ERR(svn_wc__db_base_get_info(((void*)0), ((void*)0), ((void*)0), ((void*)0),
                                         repos_root_url, repos_uuid, ((void*)0),
                                         ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0),
                                         ((void*)0), ((void*)0), ((void*)0),
                                         db, parent_abspath,
                                         result_pool, scratch_pool));
    }

  return SVN_NO_ERROR;
}
