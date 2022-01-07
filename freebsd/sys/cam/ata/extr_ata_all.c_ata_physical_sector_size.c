
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct ata_params {int pss; } ;


 int ATA_PSS_LSPPS ;
 int ATA_PSS_MULTLS ;
 int ATA_PSS_VALID_MASK ;
 int ATA_PSS_VALID_VALUE ;
 scalar_t__ ata_logical_sector_size (struct ata_params*) ;

uint64_t
ata_physical_sector_size(struct ata_params *ident_data)
{
 if ((ident_data->pss & ATA_PSS_VALID_MASK) == ATA_PSS_VALID_VALUE) {
  if (ident_data->pss & ATA_PSS_MULTLS) {
   return ((uint64_t)ata_logical_sector_size(ident_data) *
       (1 << (ident_data->pss & ATA_PSS_LSPPS)));
  } else {
   return (uint64_t)ata_logical_sector_size(ident_data);
  }
 }
 return (512);
}
