
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_error_t ;
typedef int svn_checksum_t ;
typedef int apr_pool_t ;


 int SVN_CONFIG__AUTH_SUBDIR ;
 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int strlen (char const*) ;
 int svn_checksum (int **,int ,char const*,int ,int *) ;
 int svn_checksum_md5 ;
 char* svn_checksum_to_cstring (int *,int *) ;
 int svn_config_get_user_config_path (char const**,char const*,int ,int *) ;
 char* svn_dirent_join (char const*,char const*,int *) ;

svn_error_t *
svn_auth__file_path(const char **path,
                    const char *cred_kind,
                    const char *realmstring,
                    const char *config_dir,
                    apr_pool_t *pool)
{
  const char *authdir_path, *hexname;
  svn_checksum_t *checksum;




  SVN_ERR(svn_config_get_user_config_path(&authdir_path, config_dir,
                                          SVN_CONFIG__AUTH_SUBDIR, pool));
  if (authdir_path)
    {
      authdir_path = svn_dirent_join(authdir_path, cred_kind, pool);



      SVN_ERR(svn_checksum(&checksum, svn_checksum_md5, realmstring,
                           strlen(realmstring), pool));
      hexname = svn_checksum_to_cstring(checksum, pool);

      *path = svn_dirent_join(authdir_path, hexname, pool);
    }
  else
    *path = ((void*)0);

  return SVN_NO_ERROR;
}
