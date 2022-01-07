
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_subst_eol_style_t ;


 char* APR_EOL_STR ;
 int strcmp (char*,char const*) ;
 int svn_subst_eol_style_fixed ;
 int svn_subst_eol_style_native ;
 int svn_subst_eol_style_none ;
 int svn_subst_eol_style_unknown ;

void
svn_subst_eol_style_from_value(svn_subst_eol_style_t *style,
                               const char **eol,
                               const char *value)
{
  if (value == ((void*)0))
    {

      *eol = ((void*)0);
      if (style)
        *style = svn_subst_eol_style_none;
    }
  else if (! strcmp("native", value))
    {
      *eol = APR_EOL_STR;
      if (style)
        *style = svn_subst_eol_style_native;
    }
  else if (! strcmp("LF", value))
    {
      *eol = "\n";
      if (style)
        *style = svn_subst_eol_style_fixed;
    }
  else if (! strcmp("CR", value))
    {
      *eol = "\r";
      if (style)
        *style = svn_subst_eol_style_fixed;
    }
  else if (! strcmp("CRLF", value))
    {
      *eol = "\r\n";
      if (style)
        *style = svn_subst_eol_style_fixed;
    }
  else
    {
      *eol = ((void*)0);
      if (style)
        *style = svn_subst_eol_style_unknown;
    }
}
