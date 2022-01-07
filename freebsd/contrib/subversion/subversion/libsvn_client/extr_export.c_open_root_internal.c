
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ kind; } ;
typedef TYPE_1__ svn_wc_notify_t ;
typedef int (* svn_wc_notify_func2_t ) (void*,TYPE_1__*,int *) ;
typedef scalar_t__ svn_node_kind_t ;
typedef int svn_error_t ;
typedef int svn_boolean_t ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int SVN_ERR_WC_NOT_WORKING_COPY ;
 int SVN_ERR_WC_OBSTRUCTED_UPDATE ;
 int * SVN_NO_ERROR ;
 int _ (char*) ;
 int stub1 (void*,TYPE_1__*,int *) ;
 int svn_dirent_local_style (char const*,int *) ;
 int * svn_error_createf (int ,int *,int ,int ) ;
 int svn_io_check_path (char const*,scalar_t__*,int *) ;
 int svn_io_make_dir_recursively (char const*,int *) ;
 scalar_t__ svn_node_dir ;
 scalar_t__ svn_node_file ;
 scalar_t__ svn_node_none ;
 TYPE_1__* svn_wc_create_notify (char const*,int ,int *) ;
 int svn_wc_notify_update_add ;

__attribute__((used)) static svn_error_t *
open_root_internal(const char *path,
                   svn_boolean_t force,
                   svn_wc_notify_func2_t notify_func,
                   void *notify_baton,
                   apr_pool_t *pool)
{
  svn_node_kind_t kind;

  SVN_ERR(svn_io_check_path(path, &kind, pool));
  if (kind == svn_node_none)
    SVN_ERR(svn_io_make_dir_recursively(path, pool));
  else if (kind == svn_node_file)
    return svn_error_createf(SVN_ERR_WC_NOT_WORKING_COPY, ((void*)0),
                             _("'%s' exists and is not a directory"),
                             svn_dirent_local_style(path, pool));
  else if ((kind != svn_node_dir) || (! force))
    return svn_error_createf(SVN_ERR_WC_OBSTRUCTED_UPDATE, ((void*)0),
                             _("'%s' already exists"),
                             svn_dirent_local_style(path, pool));

  if (notify_func)
    {
      svn_wc_notify_t *notify = svn_wc_create_notify(path,
                                                     svn_wc_notify_update_add,
                                                     pool);
      notify->kind = svn_node_dir;
      (*notify_func)(notify_baton, notify, pool);
    }

  return SVN_NO_ERROR;
}
