
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int free (char*) ;
 int lowercase (char*) ;
 int match_pattern_list (char*,char const*,int) ;
 char* xstrdup (char const*) ;

int
match_hostname(const char *host, const char *pattern)
{
 char *hostcopy = xstrdup(host);
 int r;

 lowercase(hostcopy);
 r = match_pattern_list(hostcopy, pattern, 1);
 free(hostcopy);
 return r;
}
