
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int_value ;


 int ATF_REQUIRE_EQ_MSG (int,size_t,char*,...) ;
 int errno ;
 int strerror (int ) ;
 int sysctlbyname (char const*,int*,size_t*,int *,int ) ;

__attribute__((used)) static int
get_int_via_sysctlbyname(const char *oidname)
{
 size_t oldlen;
 int int_value;

 oldlen = sizeof(int_value);

 ATF_REQUIRE_EQ_MSG(sysctlbyname(oidname, &int_value, &oldlen, ((void*)0), 0),
     0, "sysctlbyname(%s, ...) failed: %s", oidname, strerror(errno));
 ATF_REQUIRE_EQ_MSG(sizeof(int_value), oldlen, "sanity check failed");

 return (int_value);
}
