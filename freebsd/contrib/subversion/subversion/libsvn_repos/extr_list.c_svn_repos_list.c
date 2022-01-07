
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int svn_repos_dirent_receiver_t ;
typedef int (* svn_repos_authz_func_t ) (int *,int *,char const*,void*,int *) ;
typedef scalar_t__ svn_node_kind_t ;
typedef int svn_membuf_t ;
typedef int svn_fs_root_t ;
typedef int svn_error_t ;
typedef scalar_t__ svn_depth_t ;
typedef int svn_cancel_func_t ;
typedef int svn_boolean_t ;
typedef int apr_pool_t ;
struct TYPE_5__ {scalar_t__ nelts; } ;
typedef TYPE_1__ apr_array_header_t ;


 int SVN_ERR (int ) ;
 int SVN_ERR_FS_NOT_FOUND ;
 int SVN_ERR_REPOS_BAD_ARGS ;
 int * SVN_NO_ERROR ;
 char* _ (char*) ;
 int do_list (int *,char const*,TYPE_1__ const*,scalar_t__,int ,int (*) (int *,int *,char const*,void*,int *),void*,int ,void*,int ,void*,int *,int *) ;
 scalar_t__ matches_any (int ,TYPE_1__ const*,int *) ;
 int report_dirent (int *,char const*,scalar_t__,int ,int ,void*,int *) ;
 scalar_t__ svn_depth_empty ;
 int svn_dirent_dirname (char const*,int *) ;
 int * svn_error_createf (int ,int *,char*,char const*) ;
 int svn_fs_check_path (scalar_t__*,int *,char const*,int *) ;
 int svn_membuf__create (int *,int,int *) ;
 scalar_t__ svn_node_dir ;
 scalar_t__ svn_node_file ;

svn_error_t *
svn_repos_list(svn_fs_root_t *root,
               const char *path,
               const apr_array_header_t *patterns,
               svn_depth_t depth,
               svn_boolean_t path_info_only,
               svn_repos_authz_func_t authz_read_func,
               void *authz_read_baton,
               svn_repos_dirent_receiver_t receiver,
               void *receiver_baton,
               svn_cancel_func_t cancel_func,
               void *cancel_baton,
               apr_pool_t *scratch_pool)
{
  svn_membuf_t scratch_buffer;


  svn_node_kind_t kind;
  if (depth < svn_depth_empty)
    return svn_error_createf(SVN_ERR_REPOS_BAD_ARGS, ((void*)0),
                             "Invalid depth '%d' in svn_repos_list", depth);


  if (authz_read_func)
    {
      svn_boolean_t has_access;
      SVN_ERR(authz_read_func(&has_access, root, path, authz_read_baton,
                              scratch_pool));
      if (!has_access)
        return SVN_NO_ERROR;
    }





  SVN_ERR(svn_fs_check_path(&kind, root, path, scratch_pool));
  if (kind == svn_node_file)
    {

      depth = svn_depth_empty;
    }
  else if (kind != svn_node_dir)
    {
      return svn_error_createf(SVN_ERR_FS_NOT_FOUND, ((void*)0),
                               _("Path '%s' not found"), path);
    }



  if (patterns && patterns->nelts == 0)
    return SVN_NO_ERROR;



  svn_membuf__create(&scratch_buffer, 256, scratch_pool);


  if (matches_any(svn_dirent_dirname(path, scratch_pool), patterns,
                  &scratch_buffer))
    SVN_ERR(report_dirent(root, path, kind, path_info_only,
                          receiver, receiver_baton, scratch_pool));


  if (depth > svn_depth_empty)
    SVN_ERR(do_list(root, path, patterns, depth,
                    path_info_only, authz_read_func, authz_read_baton,
                    receiver, receiver_baton, cancel_func, cancel_baton,
                    &scratch_buffer, scratch_pool));

  return SVN_NO_ERROR;
}
