
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_error_t ;
typedef int svn_config_t ;
typedef scalar_t__ svn_boolean_t ;
typedef int apr_pool_t ;


 scalar_t__ FALSE ;
 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 scalar_t__ TRUE ;
 int svn_config_create2 (int **,scalar_t__,scalar_t__,int *) ;
 int svn_config_merge (int *,char const*,scalar_t__) ;
 int svn_config_read3 (int **,char const*,scalar_t__,scalar_t__,scalar_t__,int *) ;

__attribute__((used)) static svn_error_t *
read_all(svn_config_t **cfgp,
         const char *sys_registry_path,
         const char *usr_registry_path,
         const char *sys_file_path,
         const char *usr_file_path,
         apr_pool_t *pool)
{
  svn_boolean_t red_config = FALSE;
  if (sys_file_path)
    {
      if (red_config)
        SVN_ERR(svn_config_merge(*cfgp, sys_file_path, FALSE));
      else
        {
          SVN_ERR(svn_config_read3(cfgp, sys_file_path,
                                   FALSE, FALSE, FALSE, pool));
          red_config = TRUE;
        }
    }
  if (usr_file_path)
    {
      if (red_config)
        SVN_ERR(svn_config_merge(*cfgp, usr_file_path, FALSE));
      else
        {
          SVN_ERR(svn_config_read3(cfgp, usr_file_path,
                                   FALSE, FALSE, FALSE, pool));
          red_config = TRUE;
        }
    }

  if (! red_config)
    SVN_ERR(svn_config_create2(cfgp, FALSE, FALSE, pool));

  return SVN_NO_ERROR;
}
