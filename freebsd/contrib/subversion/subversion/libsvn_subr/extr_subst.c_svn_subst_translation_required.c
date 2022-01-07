
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ svn_subst_eol_style_t ;
typedef int svn_boolean_t ;
typedef int apr_hash_t ;


 int APR_EOL_STR ;
 char const* SVN_SUBST_NATIVE_EOL_STR ;
 scalar_t__ strcmp (int ,char const*) ;
 scalar_t__ svn_subst_eol_style_fixed ;
 scalar_t__ svn_subst_eol_style_native ;
 scalar_t__ svn_subst_eol_style_none ;

svn_boolean_t
svn_subst_translation_required(svn_subst_eol_style_t style,
                               const char *eol,
                               apr_hash_t *keywords,
                               svn_boolean_t special,
                               svn_boolean_t force_eol_check)
{
  return (special || keywords
          || (style != svn_subst_eol_style_none && force_eol_check)
          || (style == svn_subst_eol_style_native &&
              strcmp(APR_EOL_STR, SVN_SUBST_NATIVE_EOL_STR) != 0)
          || (style == svn_subst_eol_style_fixed &&
              strcmp(APR_EOL_STR, eol) != 0));
}
