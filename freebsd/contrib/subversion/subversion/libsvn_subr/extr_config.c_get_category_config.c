
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ apr_err; } ;
typedef TYPE_1__ svn_error_t ;
typedef int svn_config_t ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 scalar_t__ SVN_ERR_BAD_FILENAME ;
 int SVN_REGISTRY_SYS_CONFIG_PATH ;
 int SVN_REGISTRY_USR_CONFIG_PATH ;
 int SVN_VA_NULL ;
 char* apr_pstrcat (int *,int ,char const*,int ) ;
 TYPE_1__* read_all (int **,char const*,char const*,char const*,char const*,int *) ;
 TYPE_1__* svn_config__sys_config_path (char const**,char const*,int *) ;
 int svn_config_get_user_config_path (char const**,char const*,char const*,int *) ;
 int svn_error_clear (TYPE_1__*) ;

__attribute__((used)) static svn_error_t *
get_category_config(svn_config_t **cfg,
                    const char *config_dir,
                    const char *category,
                    apr_pool_t *pool)
{
  const char *usr_reg_path = ((void*)0), *sys_reg_path = ((void*)0);
  const char *usr_cfg_path, *sys_cfg_path;
  svn_error_t *err = ((void*)0);

  *cfg = ((void*)0);

  if (! config_dir)
    {







      err = svn_config__sys_config_path(&sys_cfg_path, category, pool);
      if ((err) && (err->apr_err == SVN_ERR_BAD_FILENAME))
        {
          sys_cfg_path = ((void*)0);
          svn_error_clear(err);
        }
      else if (err)
        return err;
    }
  else
    sys_cfg_path = ((void*)0);

  SVN_ERR(svn_config_get_user_config_path(&usr_cfg_path, config_dir, category,
                                          pool));
  return read_all(cfg, sys_reg_path, usr_reg_path,
                  sys_cfg_path, usr_cfg_path, pool);
}
