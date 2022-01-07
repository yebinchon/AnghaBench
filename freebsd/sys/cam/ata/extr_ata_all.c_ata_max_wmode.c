
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ata_params {int mwdmamodes; } ;


 int ATA_WDMA0 ;
 int ATA_WDMA1 ;
 int ATA_WDMA2 ;

int
ata_max_wmode(struct ata_params *ap)
{
    if (ap->mwdmamodes & 0x04)
 return ATA_WDMA2;
    if (ap->mwdmamodes & 0x02)
 return ATA_WDMA1;
    if (ap->mwdmamodes & 0x01)
 return ATA_WDMA0;
    return -1;
}
