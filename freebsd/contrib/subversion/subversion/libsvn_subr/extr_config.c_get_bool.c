
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ svn_tristate_t ;
typedef int svn_error_t ;
typedef int svn_boolean_t ;


 int FALSE ;
 int SVN_ERR_BAD_CONFIG_VALUE ;
 int * SVN_NO_ERROR ;
 int TRUE ;
 int _ (char*) ;
 int * svn_error_createf (int ,int *,int ,char const*,char const*,...) ;
 scalar_t__ svn_tristate__from_word (char const*) ;
 scalar_t__ svn_tristate_false ;
 scalar_t__ svn_tristate_true ;

__attribute__((used)) static svn_error_t *
get_bool(svn_boolean_t *boolp, const char *input, svn_boolean_t default_value,
         const char *section, const char *option)
{
  svn_tristate_t value = svn_tristate__from_word(input);

  if (value == svn_tristate_true)
    *boolp = TRUE;
  else if (value == svn_tristate_false)
    *boolp = FALSE;
  else if (input == ((void*)0))
    *boolp = default_value;

  else if (section)
    return svn_error_createf(SVN_ERR_BAD_CONFIG_VALUE, ((void*)0),
                             _("Config error: invalid boolean "
                               "value '%s' for '[%s] %s'"),
                             input, section, option);
  else
    return svn_error_createf(SVN_ERR_BAD_CONFIG_VALUE, ((void*)0),
                             _("Config error: invalid boolean "
                               "value '%s' for '%s'"),
                             input, option);

  return SVN_NO_ERROR;
}
