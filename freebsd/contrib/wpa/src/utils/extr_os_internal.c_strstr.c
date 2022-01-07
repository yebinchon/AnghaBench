
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 size_t os_strlen (char const*) ;
 scalar_t__ os_strncmp (char const*,char const*,size_t) ;

char * os_strstr(const char *haystack, const char *needle)
{
 size_t len = os_strlen(needle);
 while (*haystack) {
  if (os_strncmp(haystack, needle, len) == 0)
   return (char *) haystack;
  haystack++;
 }

 return ((void*)0);
}
