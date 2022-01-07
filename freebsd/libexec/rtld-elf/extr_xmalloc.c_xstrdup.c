
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int memcpy (char*,char const*,size_t) ;
 int strlen (char const*) ;
 char* xmalloc (size_t) ;

char *
xstrdup(const char *str)
{
 char *copy;
 size_t len;

 len = strlen(str) + 1;
 copy = xmalloc(len);
 memcpy(copy, str, len);
 return (copy);
}
