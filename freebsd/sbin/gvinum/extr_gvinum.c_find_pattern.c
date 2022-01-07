
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int strcmp (char*,char const*) ;
 char* strsep (char**,char*) ;

__attribute__((used)) static const char *
find_pattern(char *line, const char *pattern)
{
 char *ptr;

 ptr = strsep(&line, " ");
 while (ptr != ((void*)0)) {
  if (!strcmp(ptr, pattern)) {

   ptr = strsep(&line, " ");
   return (ptr);
  }
  ptr = strsep(&line, " ");
 }
 return (((void*)0));
}
