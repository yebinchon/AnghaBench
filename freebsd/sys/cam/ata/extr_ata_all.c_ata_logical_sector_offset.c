
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct ata_params {int lsalign; } ;


 scalar_t__ ata_logical_sector_size (struct ata_params*) ;

uint64_t
ata_logical_sector_offset(struct ata_params *ident_data)
{
 if ((ident_data->lsalign & 0xc000) == 0x4000) {
  return ((uint64_t)ata_logical_sector_size(ident_data) *
      (ident_data->lsalign & 0x3fff));
 }
 return (0);
}
