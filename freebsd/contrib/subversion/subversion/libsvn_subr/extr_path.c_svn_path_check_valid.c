
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_error_t ;
typedef int apr_pool_t ;


 int SVN_ERR_FS_PATH_SYNTAX ;
 int * SVN_NO_ERROR ;
 int _ (char*) ;
 scalar_t__ svn_ctype_iscntrl (char const) ;
 int svn_dirent_local_style (char const*,int *) ;
 int * svn_error_createf (int ,int *,int ,unsigned char,int ) ;
 int svn_path_illegal_path_escape (int ,int *) ;

svn_error_t *
svn_path_check_valid(const char *path, apr_pool_t *pool)
{
  const char *c;

  for (c = path; *c; c++)
    {
      if (svn_ctype_iscntrl(*c))
        {
          return svn_error_createf(SVN_ERR_FS_PATH_SYNTAX, ((void*)0),
             _("Invalid control character '0x%02x' in path '%s'"),
             (unsigned char)*c,
             svn_path_illegal_path_escape(svn_dirent_local_style(path, pool),
                                          pool));
        }
    }

  return SVN_NO_ERROR;
}
