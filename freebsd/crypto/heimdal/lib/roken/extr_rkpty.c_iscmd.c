
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* estrdup (char const*) ;
 size_t strlen (char const*) ;
 scalar_t__ strncmp (char const*,char const*,size_t) ;

__attribute__((used)) static char *
iscmd(const char *buf, const char *s)
{
    size_t len = strlen(s);
    if (strncmp(buf, s, len) != 0)
 return ((void*)0);
    return estrdup(buf + len);
}
