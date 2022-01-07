
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int free (char*) ;
 int match_host_and_ip (char const*,char const*,char*) ;
 int match_pattern (char const*,char const*) ;
 char* strchr (char const*,char) ;
 char* xstrdup (char const*) ;

int
match_user(const char *user, const char *host, const char *ipaddr,
    const char *pattern)
{
 char *p, *pat;
 int ret;


 if (user == ((void*)0) && host == ((void*)0) && ipaddr == ((void*)0)) {
  if ((p = strchr(pattern, '@')) != ((void*)0) &&
      match_host_and_ip(((void*)0), ((void*)0), p + 1) < 0)
   return -1;
  return 0;
 }

 if ((p = strchr(pattern,'@')) == ((void*)0))
  return match_pattern(user, pattern);

 pat = xstrdup(pattern);
 p = strchr(pat, '@');
 *p++ = '\0';

 if ((ret = match_pattern(user, pat)) == 1)
  ret = match_host_and_ip(host, ipaddr, p);
 free(pat);

 return ret;
}
