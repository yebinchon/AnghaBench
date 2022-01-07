
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int strlcat (char*,char const*,size_t) ;
 int strlcpy (char*,char const*,size_t) ;
 int strlen (char const*) ;
 char* xmalloc (size_t) ;

char *
path_append(const char *p1, const char *p2)
{
 char *ret;
 size_t len = strlen(p1) + strlen(p2) + 2;

 ret = xmalloc(len);
 strlcpy(ret, p1, len);
 if (p1[0] != '\0' && p1[strlen(p1) - 1] != '/')
  strlcat(ret, "/", len);
 strlcat(ret, p2, len);

 return(ret);
}
