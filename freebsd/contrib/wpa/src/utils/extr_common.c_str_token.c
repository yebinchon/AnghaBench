
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ cstr_token (char*,char const*,char const**) ;

char * str_token(char *str, const char *delim, char **context)
{
 char *token = (char *) cstr_token(str, delim, (const char **) context);

 if (token && **context)
  *(*context)++ = '\0';

 return token;
}
