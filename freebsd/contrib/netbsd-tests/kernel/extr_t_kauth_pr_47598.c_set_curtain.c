
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int newval ;


 int atf_tc_fail (char*,int ,int) ;
 int curtain_name ;
 scalar_t__ sysctlbyname (int ,int *,int ,int*,int) ;

__attribute__((used)) static void
set_curtain(int newval)
{

 if (sysctlbyname(curtain_name, ((void*)0), 0, &newval, sizeof(newval)) != 0)
  atf_tc_fail("failed to set %s to %d", curtain_name, newval);
}
