
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* malloc (size_t) ;
 char* memcpy (char*,char const*,size_t) ;
 int strlen (char const*) ;

char *
strdup(const char *str)
{
 size_t len;
 char *cp;

 len = strlen(str) + 1;
 cp = malloc(len);
 if (cp != ((void*)0))
  return(memcpy(cp, str, len));
 return ((void*)0);
}
