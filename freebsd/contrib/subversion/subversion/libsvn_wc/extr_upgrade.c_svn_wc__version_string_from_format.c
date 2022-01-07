
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char const* _ (char*) ;

const char *
svn_wc__version_string_from_format(int wc_format)
{
  switch (wc_format)
    {
      case 4: return "<=1.3";
      case 8: return "1.4";
      case 9: return "1.5";
      case 10: return "1.6";
      case 128: return "1.7";
    }
  return _("(unreleased development version)");
}
