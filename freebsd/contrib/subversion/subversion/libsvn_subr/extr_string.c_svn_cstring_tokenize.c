
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* apr_strtok (int *,char const*,char**) ;
 char* strchr (char*,char) ;
 int strlen (char*) ;

char *
svn_cstring_tokenize(const char *sep, char **str)
{
    char *token;
    char *next;
    char csep;


    if ((sep == ((void*)0)) || (str == ((void*)0)) || (*str == ((void*)0)))
        return ((void*)0);


    csep = *sep;
    if (csep == '\0' || sep[1] != '\0')
      return apr_strtok(((void*)0), sep, str);


    token = *str;
    while (*token == csep)
        ++token;

    if (!*token)
        return ((void*)0);




    next = strchr(token, csep);
    if (next == ((void*)0))
      {
        *str = token + strlen(token);
      }
    else
      {
        *next = '\0';
        *str = next + 1;
      }

    return token;
}
