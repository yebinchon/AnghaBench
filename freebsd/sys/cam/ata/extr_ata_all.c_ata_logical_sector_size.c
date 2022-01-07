
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int u_int32_t ;
struct ata_params {int pss; scalar_t__ lss_2; scalar_t__ lss_1; } ;


 int ATA_PSS_LSSABOVE512 ;
 int ATA_PSS_VALID_MASK ;
 int ATA_PSS_VALID_VALUE ;

uint32_t
ata_logical_sector_size(struct ata_params *ident_data)
{
 if ((ident_data->pss & ATA_PSS_VALID_MASK) == ATA_PSS_VALID_VALUE &&
     (ident_data->pss & ATA_PSS_LSSABOVE512)) {
  return (((u_int32_t)ident_data->lss_1 |
      ((u_int32_t)ident_data->lss_2 << 16)) * 2);
 }
 return (512);
}
