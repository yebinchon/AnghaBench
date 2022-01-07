
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_error_t ;
typedef int svn_config_t ;
typedef int svn_boolean_t ;


 int * get_bool (int *,char const*,int ,char const*,char const*) ;
 int svn_config_get (int *,char const**,char const*,char const*,int *) ;

svn_error_t *
svn_config_get_bool(svn_config_t *cfg, svn_boolean_t *valuep,
                    const char *section, const char *option,
                    svn_boolean_t default_value)
{
  const char *tmp_value;
  svn_config_get(cfg, &tmp_value, section, option, ((void*)0));
  return get_bool(valuep, tmp_value, default_value, section, option);
}
