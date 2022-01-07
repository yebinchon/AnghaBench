
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ kind; } ;
typedef TYPE_1__ svn_wc_notify_t ;
typedef int svn_string_t ;
typedef int svn_revnum_t ;
typedef scalar_t__ svn_node_kind_t ;
typedef int svn_error_t ;
struct edit_baton {int notify_baton; int (* notify_func ) (int ,TYPE_1__*,int *) ;int externals; scalar_t__ force; int root_path; } ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;
typedef int apr_array_header_t ;


 int APR_OS_DEFAULT ;
 int SVN_ERR (int ) ;
 int SVN_ERR_WC_NOT_WORKING_COPY ;
 int SVN_ERR_WC_OBSTRUCTED_UPDATE ;
 int * SVN_NO_ERROR ;
 int SVN_PROP_EXTERNALS ;
 int _ (char*) ;
 int add_externals (int ,char const*,int *) ;
 int stub1 (int ,TYPE_1__*,int *) ;
 char* svn_dirent_join (int ,char const*,int *) ;
 int svn_dirent_local_style (char const*,int *) ;
 int * svn_error_createf (int ,int *,int ,int ) ;
 int * svn_hash_gets (int *,int ) ;
 int svn_io_check_path (char const*,scalar_t__*,int *) ;
 int svn_io_dir_make (char const*,int ,int *) ;
 scalar_t__ svn_node_dir ;
 scalar_t__ svn_node_file ;
 scalar_t__ svn_node_none ;
 TYPE_1__* svn_wc_create_notify (char const*,int ,int *) ;
 int svn_wc_notify_update_add ;

__attribute__((used)) static svn_error_t *
add_directory_ev2(void *baton,
                  const char *relpath,
                  const apr_array_header_t *children,
                  apr_hash_t *props,
                  svn_revnum_t replaces_rev,
                  apr_pool_t *scratch_pool)
{
  struct edit_baton *eb = baton;
  svn_node_kind_t kind;
  const char *full_path = svn_dirent_join(eb->root_path, relpath,
                                          scratch_pool);
  svn_string_t *val;

  SVN_ERR(svn_io_check_path(full_path, &kind, scratch_pool));
  if (kind == svn_node_none)
    SVN_ERR(svn_io_dir_make(full_path, APR_OS_DEFAULT, scratch_pool));
  else if (kind == svn_node_file)
    return svn_error_createf(SVN_ERR_WC_NOT_WORKING_COPY, ((void*)0),
                             _("'%s' exists and is not a directory"),
                             svn_dirent_local_style(full_path, scratch_pool));
  else if (! (kind == svn_node_dir && eb->force))
    return svn_error_createf(SVN_ERR_WC_OBSTRUCTED_UPDATE, ((void*)0),
                             _("'%s' already exists"),
                             svn_dirent_local_style(full_path, scratch_pool));

  if ( (val = svn_hash_gets(props, SVN_PROP_EXTERNALS)) )
    SVN_ERR(add_externals(eb->externals, full_path, val));

  if (eb->notify_func)
    {
      svn_wc_notify_t *notify = svn_wc_create_notify(full_path,
                                                     svn_wc_notify_update_add,
                                                     scratch_pool);
      notify->kind = svn_node_dir;
      (*eb->notify_func)(eb->notify_baton, notify, scratch_pool);
    }

  return SVN_NO_ERROR;
}
