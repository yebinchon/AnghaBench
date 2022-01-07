
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct efi_map_header {int dummy; } ;


 int foreach_efi_map_entry (struct efi_map_header*,int ) ;
 int print_efi_map_entry ;
 int printf (char*,char*,char*,char*,char*,char*) ;

__attribute__((used)) static void
print_efi_map_entries(struct efi_map_header *efihdr)
{

 printf("%23s %12s %12s %8s %4s\n",
     "Type", "Physical", "Virtual", "#Pages", "Attr");
 foreach_efi_map_entry(efihdr, print_efi_map_entry);
}
