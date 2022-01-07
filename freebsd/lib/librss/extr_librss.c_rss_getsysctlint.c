
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int sysctlbyname (char const*,int*,size_t*,int *,int ) ;
 int warn (char*,char const*) ;

__attribute__((used)) static int
rss_getsysctlint(const char *s)
{
 int val, retval;
 size_t rlen;

 rlen = sizeof(int);
 retval = sysctlbyname(s, &val, &rlen, ((void*)0), 0);
 if (retval < 0) {
  warn("sysctlbyname (%s)", s);
  return (-1);
 }

 return (val);
}
