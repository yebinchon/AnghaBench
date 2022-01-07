
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cpu_vendor ;
 scalar_t__ strcmp (int ,char*) ;

bool
vmm_is_amd(void)
{
 return (strcmp(cpu_vendor, "AuthenticAMD") == 0);
}
