
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ getdomainname (char*,int) ;
 scalar_t__ gethostname (char*,int) ;
 int snprintf (char*,int,char*) ;
 int strlen (char*) ;

__attribute__((used)) static void get_host_and_domain(char *data, int sz)
{
 char *s = data;
 int n;

 if (gethostname(s, sz) < 0)
  snprintf(s, sz, "?hostname?");

 s[sz - 1] = 0;
 if ((n = strlen(s)) >= sz)
  return;
 s[n] = '.';
 s += n + 1;
 sz -= n + 1;

 if (getdomainname(s, sz) < 0)
  snprintf(s, sz, "?domainname?");
 if (strlen(s) == 0)
  s[-1] = 0;
}
