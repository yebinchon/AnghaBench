
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int db; } ;
typedef TYPE_1__ svn_wc_context_t ;
typedef scalar_t__ svn_wc__db_status_t ;
typedef scalar_t__ svn_node_kind_t ;
typedef int svn_error_t ;
typedef int svn_checksum_t ;
typedef int svn_boolean_t ;
typedef int apr_pool_t ;


 int APR_OS_DEFAULT ;
 int FALSE ;
 int SVN_ERR (int ) ;
 int SVN_ERR_WC_PATH_FOUND ;
 int SVN_ERR_WC_PATH_UNEXPECTED_STATUS ;
 int * SVN_NO_ERROR ;
 int _ (char*) ;
 int restore_file (int ,char const*,int ,int ,int *,int *,int *) ;
 int svn_dirent_local_style (char const*,int *) ;
 int * svn_error_createf (int ,int *,int ,int ) ;
 int svn_io_check_path (char const*,scalar_t__*,int *) ;
 int svn_io_dir_make (char const*,int ,int *) ;
 scalar_t__ svn_node_dir ;
 scalar_t__ svn_node_file ;
 scalar_t__ svn_node_none ;
 scalar_t__ svn_node_symlink ;
 int svn_wc__db_read_info (scalar_t__*,scalar_t__*,int *,int *,int *,int *,int *,int *,int *,int *,int const**,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int *,int ,char const*,int *,int *) ;
 scalar_t__ svn_wc__db_status_added ;
 scalar_t__ svn_wc__db_status_incomplete ;
 scalar_t__ svn_wc__db_status_normal ;

svn_error_t *
svn_wc_restore(svn_wc_context_t *wc_ctx,
               const char *local_abspath,
               svn_boolean_t use_commit_times,
               apr_pool_t *scratch_pool)
{

  svn_wc__db_status_t status;
  svn_node_kind_t kind;
  svn_node_kind_t disk_kind;
  const svn_checksum_t *checksum;

  SVN_ERR(svn_io_check_path(local_abspath, &disk_kind, scratch_pool));

  if (disk_kind != svn_node_none)
    return svn_error_createf(SVN_ERR_WC_PATH_FOUND, ((void*)0),
                             _("The existing node '%s' can not be restored."),
                             svn_dirent_local_style(local_abspath,
                                                    scratch_pool));

  SVN_ERR(svn_wc__db_read_info(&status, &kind, ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0),
                               ((void*)0), ((void*)0), ((void*)0), &checksum, ((void*)0), ((void*)0), ((void*)0), ((void*)0),
                               ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0),
                               ((void*)0), ((void*)0), ((void*)0), ((void*)0),
                               wc_ctx->db, local_abspath,
                               scratch_pool, scratch_pool));

  if (status != svn_wc__db_status_normal
      && !((status == svn_wc__db_status_added
            || status == svn_wc__db_status_incomplete)
           && (kind == svn_node_dir
               || (kind == svn_node_file && checksum != ((void*)0))
                                                           )))
    {
      return svn_error_createf(SVN_ERR_WC_PATH_UNEXPECTED_STATUS, ((void*)0),
                               _("The node '%s' can not be restored."),
                               svn_dirent_local_style(local_abspath,
                                                      scratch_pool));
    }

  if (kind == svn_node_file || kind == svn_node_symlink)
    SVN_ERR(restore_file(wc_ctx->db, local_abspath, use_commit_times,
                         FALSE ,
                         ((void*)0), ((void*)0) ,
                         scratch_pool));
  else
    SVN_ERR(svn_io_dir_make(local_abspath, APR_OS_DEFAULT, scratch_pool));

  return SVN_NO_ERROR;
}
