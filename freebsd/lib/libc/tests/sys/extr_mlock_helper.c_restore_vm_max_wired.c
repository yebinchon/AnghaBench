
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_long ;
typedef int FILE ;


 char* VM_MAX_WIRED ;
 int fclose (int *) ;
 int * fopen (char*,char*) ;
 int fscanf (int *,char*,scalar_t__*) ;
 int perror (char*) ;
 int printf (char*,char*,scalar_t__) ;
 int vm_max_wired_sysctl (int *,scalar_t__*) ;

void
restore_vm_max_wired(void)
{
 FILE *fp;
 u_long saved_max_wired;

 fp = fopen(VM_MAX_WIRED, "r");
 if (fp == ((void*)0)) {
  perror("fopen failed\n");
  return;
 }

 if (fscanf(fp, "%lu", &saved_max_wired) != 1) {
  perror("fscanf failed\n");
  fclose(fp);
  return;
 }

 fclose(fp);
 printf("old value in %s: %lu\n", VM_MAX_WIRED, saved_max_wired);

 if (saved_max_wired == 0)
  return;

 vm_max_wired_sysctl(((void*)0), &saved_max_wired);
}
