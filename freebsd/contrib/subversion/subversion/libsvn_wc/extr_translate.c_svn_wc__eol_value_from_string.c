
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int strcmp (char*,char const*) ;

void
svn_wc__eol_value_from_string(const char **value, const char *eol)
{
  if (eol == ((void*)0))
    *value = ((void*)0);
  else if (! strcmp("\n", eol))
    *value = "LF";
  else if (! strcmp("\r", eol))
    *value = "CR";
  else if (! strcmp("\r\n", eol))
    *value = "CRLF";
  else
    *value = ((void*)0);
}
