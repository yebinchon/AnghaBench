
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct efi_map_header {int dummy; } ;


 int add_efi_map_entry ;
 int foreach_efi_map_entry (struct efi_map_header*,int ) ;

__attribute__((used)) static void
add_efi_map_entries(struct efi_map_header *efihdr)
{

 foreach_efi_map_entry(efihdr, add_efi_map_entry);
}
