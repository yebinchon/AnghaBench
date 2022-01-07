
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ ENOENT ;
 int atf_tc_fail (char*,char const*) ;
 scalar_t__ errno ;
 int fprintf (int ,char*,char*) ;
 int printf (char*,char const*) ;
 int stderr ;
 char* strerror (scalar_t__) ;
 int sysctlbyname (char const*,void*,size_t*,int *,int ) ;

__attribute__((used)) static bool
get_sysctl(const char *name, void *buf, const size_t len)
{
 size_t len2 = len;
 printf("Querying sysctl variable: %s\n", name);
 int ret = sysctlbyname(name, buf, &len2, ((void*)0), 0);
 if (ret == -1 && errno != ENOENT) {
  fprintf(stderr, "sysctlbyname(2) failed: %s\n",
      strerror(errno));
  atf_tc_fail("Failed to query %s", name);
 }
 return ret != -1;
}
