
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ svn_subst_eol_style_t ;
typedef int svn_error_t ;


 int SVN_ERR_IO_UNKNOWN_EOL ;
 int * SVN_NO_ERROR ;
 int _ (char*) ;
 int * svn_error_createf (int ,int *,int ,char const*) ;
 scalar_t__ svn_subst_eol_style_fixed ;
 int svn_subst_eol_style_from_value (scalar_t__*,char const**,char const*) ;
 scalar_t__ svn_subst_eol_style_native ;

__attribute__((used)) static svn_error_t *
get_eol_style(svn_subst_eol_style_t *style,
              const char **eol,
              const char *value,
              const char *requested_value)
{
  svn_subst_eol_style_from_value(style, eol, value);
  if (requested_value && *style == svn_subst_eol_style_native)
    {
      svn_subst_eol_style_t requested_style;
      const char *requested_eol;

      svn_subst_eol_style_from_value(&requested_style, &requested_eol,
                                     requested_value);

      if (requested_style == svn_subst_eol_style_fixed)
        *eol = requested_eol;
      else
        return svn_error_createf(SVN_ERR_IO_UNKNOWN_EOL, ((void*)0),
                                 _("'%s' is not a valid EOL value"),
                                 requested_value);
    }
  return SVN_NO_ERROR;
}
