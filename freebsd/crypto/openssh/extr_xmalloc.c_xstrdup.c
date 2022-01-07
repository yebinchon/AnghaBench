
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int strlcpy (char*,char const*,size_t) ;
 int strlen (char const*) ;
 char* xmalloc (size_t) ;

char *
xstrdup(const char *str)
{
 size_t len;
 char *cp;

 len = strlen(str) + 1;
 cp = xmalloc(len);
 strlcpy(cp, str, len);
 return cp;
}
