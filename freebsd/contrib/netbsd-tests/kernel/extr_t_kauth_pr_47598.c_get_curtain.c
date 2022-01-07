
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int curtain ;


 int atf_tc_fail (char*,int ) ;
 int curtain_name ;
 scalar_t__ sysctlbyname (int ,int*,size_t*,int *,int ) ;

__attribute__((used)) static int
get_curtain(void)
{
 int curtain;
 size_t len = sizeof(curtain);

 if (sysctlbyname(curtain_name, &curtain, &len, ((void*)0), 0) != 0)
  atf_tc_fail("failed to read %s", curtain_name);

 return curtain;
}
