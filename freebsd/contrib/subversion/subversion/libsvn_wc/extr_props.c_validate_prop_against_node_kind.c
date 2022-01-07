
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_node_kind_t ;
typedef int svn_error_t ;
typedef int apr_pool_t ;


 int SVN_ERR_ILLEGAL_TARGET ;
 int SVN_ERR_NODE_UNEXPECTED_KIND ;
 int * SVN_NO_ERROR ;
 int _ (char*) ;
 char const* svn_dirent_local_style (char const*,int *) ;
 int * svn_error_createf (int ,int *,int ,char const*,...) ;


 scalar_t__ svn_path_is_url (char const*) ;
 int svn_prop_is_known_svn_dir_prop (char const*) ;
 int svn_prop_is_known_svn_file_prop (char const*) ;

__attribute__((used)) static svn_error_t *
validate_prop_against_node_kind(const char *name,
                                const char *path,
                                svn_node_kind_t node_kind,
                                apr_pool_t *pool)
{
  const char *path_display
    = svn_path_is_url(path) ? path : svn_dirent_local_style(path, pool);

  switch (node_kind)
    {
    case 129:
      if (! svn_prop_is_known_svn_dir_prop(name)
          && svn_prop_is_known_svn_file_prop(name))
        return svn_error_createf(SVN_ERR_ILLEGAL_TARGET, ((void*)0),
                                 _("Cannot set '%s' on a directory ('%s')"),
                                 name, path_display);
      break;
    case 128:
      if (! svn_prop_is_known_svn_file_prop(name)
          && svn_prop_is_known_svn_dir_prop(name))
        return svn_error_createf(SVN_ERR_ILLEGAL_TARGET, ((void*)0),
                                 _("Cannot set '%s' on a file ('%s')"),
                                 name,
                                 path_display);
      break;
    default:
      return svn_error_createf(SVN_ERR_NODE_UNEXPECTED_KIND, ((void*)0),
                               _("'%s' is not a file or directory"),
                               path_display);
    }

  return SVN_NO_ERROR;
}
