
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int in_delim (char,char const*) ;

char *strsep(char **stringp, const char *delim)
{
 char* s;
 char* orig;
 if(stringp == ((void*)0) || *stringp == ((void*)0))
  return ((void*)0);
 orig = *stringp;
 s = *stringp;
 while(*s && !in_delim(*s, delim))
  s++;
 if(*s) {
  *s = 0;
  *stringp = s+1;
 } else {
  *stringp = ((void*)0);
 }
 return orig;
}
