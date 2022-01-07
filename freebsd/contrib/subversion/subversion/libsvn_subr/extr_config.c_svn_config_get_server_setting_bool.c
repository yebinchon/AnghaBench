
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_error_t ;
typedef int svn_config_t ;
typedef int svn_boolean_t ;


 int * get_bool (int *,char const*,int ,char const*,char const*) ;
 char* svn_config_get_server_setting (int *,char const*,char const*,int *) ;

svn_error_t *
svn_config_get_server_setting_bool(svn_config_t *cfg,
                                   svn_boolean_t *valuep,
                                   const char *server_group,
                                   const char *option_name,
                                   svn_boolean_t default_value)
{
  const char* tmp_value;
  tmp_value = svn_config_get_server_setting(cfg, server_group,
                                            option_name, ((void*)0));
  return get_bool(valuep, tmp_value, default_value,
                  server_group, option_name);
}
