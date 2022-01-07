
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int seclevel ;


 int atf_tc_fail (char*,int ) ;
 int securelevel_name ;
 scalar_t__ sysctlbyname (int ,int*,size_t*,int *,int ) ;

__attribute__((used)) static bool
may_lower_curtain(void)
{
 int seclevel;
 size_t len = sizeof(seclevel);

 if (sysctlbyname(securelevel_name, &seclevel, &len, ((void*)0), 0) != 0)
  atf_tc_fail("failed to read %s", securelevel_name);

 return seclevel <= 0;
}
