
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* __strtok_r (char*,char const*,char**) ;

char *
strtok(char *s, const char *delim)
{
 static char *last;

 return (__strtok_r(s, delim, &last));
}
