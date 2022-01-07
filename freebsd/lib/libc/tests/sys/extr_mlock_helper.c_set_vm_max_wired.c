
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_long ;
typedef int FILE ;


 int ATF_REQUIRE_MSG (int,char*,int ) ;
 int VM_MAX_WIRED ;
 int atf_tc_skip (char*,int ,int ) ;
 int errno ;
 int fclose (int *) ;
 int * fopen (int ,char*) ;
 scalar_t__ fprintf (int *,char*,int ) ;
 int strerror (int ) ;
 int vm_max_wired_sysctl (int *,int *) ;

void
set_vm_max_wired(u_long new_value)
{
 FILE *fp;
 u_long old_value;

 fp = fopen(VM_MAX_WIRED, "w");
 if (fp == ((void*)0)) {
  atf_tc_skip("could not open %s for writing: %s",
      VM_MAX_WIRED, strerror(errno));
  return;
 }

 vm_max_wired_sysctl(&old_value, ((void*)0));

 ATF_REQUIRE_MSG(fprintf(fp, "%lu", old_value) > 0,
     "saving %s failed", VM_MAX_WIRED);

 fclose(fp);

 vm_max_wired_sysctl(((void*)0), &new_value);
}
