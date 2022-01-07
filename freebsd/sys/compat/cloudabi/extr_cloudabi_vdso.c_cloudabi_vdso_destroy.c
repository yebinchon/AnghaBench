
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sysentvec {int sv_shared_page_obj; } ;


 int vm_object_deallocate (int ) ;

void
cloudabi_vdso_destroy(struct sysentvec *sv)
{

 vm_object_deallocate(sv->sv_shared_page_obj);
}
