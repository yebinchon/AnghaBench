
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sysentvec {int sv_psstrings; int sv_usrstack; int sv_shared_page_base; int sv_maxuser; } ;


 scalar_t__ PAGE_SIZE ;
 scalar_t__ hw_lower_amd64_sharedpage ;

void
amd64_lower_shared_page(struct sysentvec *sv)
{
 if (hw_lower_amd64_sharedpage != 0) {
  sv->sv_maxuser -= PAGE_SIZE;
  sv->sv_shared_page_base -= PAGE_SIZE;
  sv->sv_usrstack -= PAGE_SIZE;
  sv->sv_psstrings -= PAGE_SIZE;
 }
}
