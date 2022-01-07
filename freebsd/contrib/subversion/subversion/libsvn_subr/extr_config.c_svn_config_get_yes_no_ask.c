
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_error_t ;
typedef int svn_config_t ;
typedef scalar_t__ svn_boolean_t ;


 int FALSE ;
 char* SVN_CONFIG_ASK ;
 char* SVN_CONFIG_FALSE ;
 char* SVN_CONFIG_TRUE ;
 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int get_bool (scalar_t__*,char const*,int ,char const*,char const*) ;
 int svn_config_get (int *,char const**,char const*,char const*,int *) ;
 scalar_t__ svn_cstring_casecmp (char const*,char*) ;

svn_error_t *
svn_config_get_yes_no_ask(svn_config_t *cfg, const char **valuep,
                          const char *section, const char *option,
                          const char* default_value)
{
  const char *tmp_value;

  svn_config_get(cfg, &tmp_value, section, option, ((void*)0));

  if (! tmp_value)
    tmp_value = default_value;

  if (tmp_value && (0 == svn_cstring_casecmp(tmp_value, SVN_CONFIG_ASK)))
    {
      *valuep = SVN_CONFIG_ASK;
    }
  else
    {
      svn_boolean_t bool_val;



      SVN_ERR(get_bool(&bool_val, tmp_value, FALSE, section, option));
      *valuep = bool_val ? SVN_CONFIG_TRUE : SVN_CONFIG_FALSE;
    }

  return SVN_NO_ERROR;
}
