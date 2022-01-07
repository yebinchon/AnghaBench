
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int apr_size_t ;


 int strlen (char const*) ;
 scalar_t__ strncmp (char const*,char const*,int) ;

const char *
svn_cstring_skip_prefix(const char *str, const char *prefix)
{
  apr_size_t len = strlen(prefix);

  if (strncmp(str, prefix, len) == 0)
    {
      return str + len;
    }
  else
    {
      return ((void*)0);
    }
}
