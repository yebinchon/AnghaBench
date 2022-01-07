
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ os_strchr (char const*,char const) ;

const char * cstr_token(const char *str, const char *delim, const char **last)
{
 const char *end, *token = str;

 if (!str || !delim || !last)
  return ((void*)0);

 if (*last)
  token = *last;

 while (*token && os_strchr(delim, *token))
  token++;

 if (!*token)
  return ((void*)0);

 end = token + 1;

 while (*end && !os_strchr(delim, *end))
  end++;

 *last = end;
 return token;
}
