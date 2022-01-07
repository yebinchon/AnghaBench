
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_error_t ;
typedef int apr_pool_t ;


 int SVN_ERR_FS_PATH_SYNTAX ;
 int * SVN_NO_ERROR ;
 int _ (char*) ;
 char* strchr (char const*,char) ;
 int * svn_error_createf (int ,int *,int ,...) ;
 int svn_path_illegal_path_escape (char const*,int *) ;
 scalar_t__ svn_path_is_backpath_present (char const*) ;
 scalar_t__ svn_path_is_dotpath_present (char const*) ;
 int svn_utf__cstring_is_valid (char const*) ;

svn_error_t *
svn_fs__path_valid(const char *path, apr_pool_t *pool)
{
  char *c;


  if (! svn_utf__cstring_is_valid(path))
    {
      return svn_error_createf(SVN_ERR_FS_PATH_SYNTAX, ((void*)0),
                               _("Path '%s' is not in UTF-8"), path);
    }


  if (svn_path_is_backpath_present(path)
      || svn_path_is_dotpath_present(path))
    {
      return svn_error_createf(SVN_ERR_FS_PATH_SYNTAX, ((void*)0),
                               _("Path '%s' contains '.' or '..' element"),
                               path);
    }





  c = strchr(path, '\n');
  if (c)
    {
      return svn_error_createf(SVN_ERR_FS_PATH_SYNTAX, ((void*)0),
               _("Invalid control character '0x%02x' in path '%s'"),
               (unsigned char)*c, svn_path_illegal_path_escape(path, pool));
    }


  return SVN_NO_ERROR;
}
