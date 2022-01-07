
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_error_t ;
typedef int apr_pool_t ;


 int SVN_ERR_BAD_FILENAME ;
 int * SVN_NO_ERROR ;
 int _ (char*) ;
 char const* adm_dir_name ;

 scalar_t__ strcmp (char const*,char const*) ;
 int svn_dirent_local_style (char const*,int *) ;
 int * svn_error_createf (int ,int *,int ,int ) ;

svn_error_t *
svn_wc_set_adm_dir(const char *name, apr_pool_t *pool)
{
  static const char *valid_dir_names[] = {
    128,
    "_svn",
    ((void*)0)
  };

  const char **dir_name;
  for (dir_name = valid_dir_names; *dir_name; ++dir_name)
    if (0 == strcmp(name, *dir_name))
      {


        adm_dir_name = *dir_name;
        return SVN_NO_ERROR;
      }
  return svn_error_createf(SVN_ERR_BAD_FILENAME, ((void*)0),
                           _("'%s' is not a valid administrative "
                             "directory name"),
                           svn_dirent_local_style(name, pool));
}
