
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct efi_md {int dummy; } ;
struct efi_map_header {int descriptor_size; int memory_size; } ;
typedef int (* efi_map_entry_cb ) (struct efi_md*) ;


 struct efi_md* efi_next_descriptor (struct efi_md*,int) ;

__attribute__((used)) static void
foreach_efi_map_entry(struct efi_map_header *efihdr, efi_map_entry_cb cb)
{
 struct efi_md *map, *p;
 size_t efisz;
 int ndesc, i;





 efisz = (sizeof(struct efi_map_header) + 0xf) & ~0xf;
 map = (struct efi_md *)((uint8_t *)efihdr + efisz);

 if (efihdr->descriptor_size == 0)
  return;
 ndesc = efihdr->memory_size / efihdr->descriptor_size;

 for (i = 0, p = map; i < ndesc; i++,
     p = efi_next_descriptor(p, efihdr->descriptor_size)) {
  cb(p);
 }
}
