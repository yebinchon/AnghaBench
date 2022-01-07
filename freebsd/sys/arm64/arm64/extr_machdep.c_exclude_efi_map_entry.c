
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct efi_md {int md_type; int md_pages; int md_phys; } ;







 int EXFLAG_NOALLOC ;
 int PAGE_SIZE ;
 int arm_physmem_exclude_region (int ,int,int ) ;

__attribute__((used)) static void
exclude_efi_map_entry(struct efi_md *p)
{

 switch (p->md_type) {
 case 130:
 case 129:
 case 132:
 case 131:
 case 128:



  break;
 default:
  arm_physmem_exclude_region(p->md_phys, p->md_pages * PAGE_SIZE,
      EXFLAG_NOALLOC);
 }
}
