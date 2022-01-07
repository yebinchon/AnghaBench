
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct efi_md {size_t md_type; int md_attr; int md_pages; int md_virt; int md_phys; } ;


 int EFI_MD_ATTR_MORE_RELIABLE ;
 int EFI_MD_ATTR_NV ;
 int EFI_MD_ATTR_RO ;
 int EFI_MD_ATTR_RP ;
 int EFI_MD_ATTR_RT ;
 int EFI_MD_ATTR_UC ;
 int EFI_MD_ATTR_UCE ;
 int EFI_MD_ATTR_WB ;
 int EFI_MD_ATTR_WC ;
 int EFI_MD_ATTR_WP ;
 int EFI_MD_ATTR_WT ;
 int EFI_MD_ATTR_XP ;
 size_t nitems (char const**) ;
 int printf (char*,...) ;

__attribute__((used)) static void
print_efi_map_entry(struct efi_md *p)
{
 const char *type;
 static const char *types[] = {
  "Reserved",
  "LoaderCode",
  "LoaderData",
  "BootServicesCode",
  "BootServicesData",
  "RuntimeServicesCode",
  "RuntimeServicesData",
  "ConventionalMemory",
  "UnusableMemory",
  "ACPIReclaimMemory",
  "ACPIMemoryNVS",
  "MemoryMappedIO",
  "MemoryMappedIOPortSpace",
  "PalCode",
  "PersistentMemory"
 };

 if (p->md_type < nitems(types))
  type = types[p->md_type];
 else
  type = "<INVALID>";
 printf("%23s %012lx %12p %08lx ", type, p->md_phys,
     p->md_virt, p->md_pages);
 if (p->md_attr & EFI_MD_ATTR_UC)
  printf("UC ");
 if (p->md_attr & EFI_MD_ATTR_WC)
  printf("WC ");
 if (p->md_attr & EFI_MD_ATTR_WT)
  printf("WT ");
 if (p->md_attr & EFI_MD_ATTR_WB)
  printf("WB ");
 if (p->md_attr & EFI_MD_ATTR_UCE)
  printf("UCE ");
 if (p->md_attr & EFI_MD_ATTR_WP)
  printf("WP ");
 if (p->md_attr & EFI_MD_ATTR_RP)
  printf("RP ");
 if (p->md_attr & EFI_MD_ATTR_XP)
  printf("XP ");
 if (p->md_attr & EFI_MD_ATTR_NV)
  printf("NV ");
 if (p->md_attr & EFI_MD_ATTR_MORE_RELIABLE)
  printf("MORE_RELIABLE ");
 if (p->md_attr & EFI_MD_ATTR_RO)
  printf("RO ");
 if (p->md_attr & EFI_MD_ATTR_RT)
  printf("RUNTIME");
 printf("\n");
}
