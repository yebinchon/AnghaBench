
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ svn_node_kind_t ;
typedef int svn_fs_root_t ;
typedef int svn_error_t ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int SVN_ERR_FS_NOT_FOUND ;
 int * SVN_NO_ERROR ;
 int _ (char*) ;
 int * svn_error_createf (int ,int *,int ,char const*) ;
 int svn_fs_check_path (scalar_t__*,int *,char const*,int *) ;
 scalar_t__ svn_node_none ;
 scalar_t__ svn_path_is_url (char const*) ;

__attribute__((used)) static svn_error_t *
verify_path(svn_node_kind_t *kind,
            svn_fs_root_t *root,
            const char *path,
            apr_pool_t *pool)
{
  SVN_ERR(svn_fs_check_path(kind, root, path, pool));

  if (*kind == svn_node_none)
    {
      if (svn_path_is_url(path))
        return svn_error_createf
          (SVN_ERR_FS_NOT_FOUND, ((void*)0),
           _("'%s' is a URL, probably should be a path"), path);
      else
        return svn_error_createf
          (SVN_ERR_FS_NOT_FOUND, ((void*)0), _("Path '%s' does not exist"), path);
    }

  return SVN_NO_ERROR;
}
