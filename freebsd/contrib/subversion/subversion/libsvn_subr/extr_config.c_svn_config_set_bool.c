
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_config_t ;
typedef scalar_t__ svn_boolean_t ;


 int SVN_CONFIG_FALSE ;
 int SVN_CONFIG_TRUE ;
 int svn_config_set (int *,char const*,char const*,int ) ;

void
svn_config_set_bool(svn_config_t *cfg,
                    const char *section, const char *option,
                    svn_boolean_t value)
{
  svn_config_set(cfg, section, option,
                 (value ? SVN_CONFIG_TRUE : SVN_CONFIG_FALSE));
}
