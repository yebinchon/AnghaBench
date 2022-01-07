
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct efi_md {int md_type; int md_pages; int md_phys; } ;
 int PAGE_SIZE ;
 int arm_physmem_hardware_region (int ,int) ;

__attribute__((used)) static void
add_efi_map_entry(struct efi_md *p)
{

 switch (p->md_type) {
 case 128:





 case 131:
 case 130:
 case 133:
 case 132:
 case 129:



  arm_physmem_hardware_region(p->md_phys,
      p->md_pages * PAGE_SIZE);
  break;
 }
}
