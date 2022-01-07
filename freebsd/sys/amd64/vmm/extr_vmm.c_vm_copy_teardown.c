
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_copyinfo {int * cookie; } ;
struct vm {int dummy; } ;


 int bzero (struct vm_copyinfo*,int) ;
 int vm_gpa_release (int *) ;

void
vm_copy_teardown(struct vm *vm, int vcpuid, struct vm_copyinfo *copyinfo,
    int num_copyinfo)
{
 int idx;

 for (idx = 0; idx < num_copyinfo; idx++) {
  if (copyinfo[idx].cookie != ((void*)0))
   vm_gpa_release(copyinfo[idx].cookie);
 }
 bzero(copyinfo, num_copyinfo * sizeof(struct vm_copyinfo));
}
