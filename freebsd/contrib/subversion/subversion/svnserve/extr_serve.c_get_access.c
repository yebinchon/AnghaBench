
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_config_t ;
typedef scalar_t__ svn_boolean_t ;
typedef enum access_type { ____Placeholder_access_type } access_type ;


 int NO_ACCESS ;
 int READ_ACCESS ;
 int SVN_CONFIG_SECTION_GENERAL ;
 int WRITE_ACCESS ;
 scalar_t__ strcmp (char const*,char*) ;
 int svn_config_get (int *,char const**,int ,char const*,char const*) ;

__attribute__((used)) static enum access_type
get_access(svn_config_t *cfg,
           const char *option,
           const char *def,
           svn_boolean_t read_only)
{
  enum access_type result;
  const char *val;

  svn_config_get(cfg, &val, SVN_CONFIG_SECTION_GENERAL, option, def);
  result = (strcmp(val, "write") == 0 ? WRITE_ACCESS :
            strcmp(val, "read") == 0 ? READ_ACCESS : NO_ACCESS);

  return result == WRITE_ACCESS && read_only ? READ_ACCESS : result;
}
