
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uintmax_t ;
typedef int uint8_t ;
struct efi_md {size_t md_type; int md_attr; scalar_t__ md_pages; int md_virt; scalar_t__ md_phys; } ;
struct efi_map_header {int descriptor_size; size_t memory_size; } ;


 int EFI_MD_ATTR_RP ;
 int EFI_MD_ATTR_RT ;
 int EFI_MD_ATTR_UC ;
 int EFI_MD_ATTR_UCE ;
 int EFI_MD_ATTR_WB ;
 int EFI_MD_ATTR_WC ;
 int EFI_MD_ATTR_WP ;
 int EFI_MD_ATTR_WT ;
 int EFI_MD_ATTR_XP ;
 struct efi_md* efi_next_descriptor (struct efi_md*,int) ;
 size_t nitems (char const* const*) ;
 int printf (char*,...) ;
 int warnx (char*,...) ;

__attribute__((used)) static int
S_efi_map(size_t l2, void *p)
{
 struct efi_map_header *efihdr;
 struct efi_md *map;
 const char *type;
 size_t efisz;
 int ndesc, i;

 static const char * const types[] = {
  [133] = "Reserved",
  [139] = "LoaderCode",
  [138] = "LoaderData",
  [141] = "BootServicesCode",
  [140] = "BootServicesData",
  [129] = "RuntimeServicesCode",
  [128] = "RuntimeServicesData",
  [136] = "ConventionalMemory",
  [142] = "UnusableMemory",
  [130] = "ACPIReclaimMemory",
  [137] = "ACPIMemoryNVS",
  [135] = "MemoryMappedIO",
  [134] = "MemoryMappedIOPortSpace",
  [132] = "PalCode",
  [131] = "PersistentMemory",
 };





 if (l2 < sizeof(*efihdr)) {
  warnx("S_efi_map length less than header");
  return (1);
 }
 efihdr = p;
 efisz = (sizeof(struct efi_map_header) + 0xf) & ~0xf;
 map = (struct efi_md *)((uint8_t *)efihdr + efisz);

 if (efihdr->descriptor_size == 0)
  return (0);
 if (l2 != efisz + efihdr->memory_size) {
  warnx("S_efi_map length mismatch %zu vs %zu", l2, efisz +
      efihdr->memory_size);
  return (1);
 }
 ndesc = efihdr->memory_size / efihdr->descriptor_size;

 printf("\n%23s %12s %12s %8s %4s",
     "Type", "Physical", "Virtual", "#Pages", "Attr");

 for (i = 0; i < ndesc; i++,
     map = efi_next_descriptor(map, efihdr->descriptor_size)) {
  type = ((void*)0);
  if (map->md_type < nitems(types))
   type = types[map->md_type];
  if (type == ((void*)0))
   type = "<INVALID>";
  printf("\n%23s %012jx %12p %08jx ", type,
      (uintmax_t)map->md_phys, map->md_virt,
      (uintmax_t)map->md_pages);
  if (map->md_attr & EFI_MD_ATTR_UC)
   printf("UC ");
  if (map->md_attr & EFI_MD_ATTR_WC)
   printf("WC ");
  if (map->md_attr & EFI_MD_ATTR_WT)
   printf("WT ");
  if (map->md_attr & EFI_MD_ATTR_WB)
   printf("WB ");
  if (map->md_attr & EFI_MD_ATTR_UCE)
   printf("UCE ");
  if (map->md_attr & EFI_MD_ATTR_WP)
   printf("WP ");
  if (map->md_attr & EFI_MD_ATTR_RP)
   printf("RP ");
  if (map->md_attr & EFI_MD_ATTR_XP)
   printf("XP ");
  if (map->md_attr & EFI_MD_ATTR_RT)
   printf("RUNTIME");
 }
 return (0);
}
