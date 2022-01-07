
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_tristate_t ;
typedef int svn_error_t ;
typedef int svn_config_t ;
typedef scalar_t__ svn_boolean_t ;


 int FALSE ;
 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int get_bool (scalar_t__*,char const*,int ,char const*,char const*) ;
 int svn_config_get (int *,char const**,char const*,char const*,int *) ;
 scalar_t__ svn_cstring_casecmp (char const*,char const*) ;
 int svn_tristate_false ;
 int svn_tristate_true ;
 int svn_tristate_unknown ;

svn_error_t *
svn_config_get_tristate(svn_config_t *cfg, svn_tristate_t *valuep,
                        const char *section, const char *option,
                        const char *unknown_value,
                        svn_tristate_t default_value)
{
  const char *tmp_value;

  svn_config_get(cfg, &tmp_value, section, option, ((void*)0));

  if (! tmp_value)
    {
      *valuep = default_value;
    }
  else if (0 == svn_cstring_casecmp(tmp_value, unknown_value))
    {
      *valuep = svn_tristate_unknown;
    }
  else
    {
      svn_boolean_t bool_val;



      SVN_ERR(get_bool(&bool_val, tmp_value, FALSE, section, option));
      *valuep = bool_val ? svn_tristate_true : svn_tristate_false;
    }

  return SVN_NO_ERROR;
}
