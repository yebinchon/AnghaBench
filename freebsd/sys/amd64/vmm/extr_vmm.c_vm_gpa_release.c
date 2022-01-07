
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* vm_page_t ;


 int PQ_ACTIVE ;
 int vm_page_unwire (void*,int ) ;

void
vm_gpa_release(void *cookie)
{
 vm_page_t m = cookie;

 vm_page_unwire(m, PQ_ACTIVE);
}
