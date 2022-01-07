
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ata_params {int atavalid; int udmamodes; } ;


 int ATA_FLAG_88 ;
 int ATA_UDMA0 ;
 int ATA_UDMA1 ;
 int ATA_UDMA2 ;
 int ATA_UDMA3 ;
 int ATA_UDMA4 ;
 int ATA_UDMA5 ;
 int ATA_UDMA6 ;

int
ata_max_umode(struct ata_params *ap)
{
    if (ap->atavalid & ATA_FLAG_88) {
 if (ap->udmamodes & 0x40)
     return ATA_UDMA6;
 if (ap->udmamodes & 0x20)
     return ATA_UDMA5;
 if (ap->udmamodes & 0x10)
     return ATA_UDMA4;
 if (ap->udmamodes & 0x08)
     return ATA_UDMA3;
 if (ap->udmamodes & 0x04)
     return ATA_UDMA2;
 if (ap->udmamodes & 0x02)
     return ATA_UDMA1;
 if (ap->udmamodes & 0x01)
     return ATA_UDMA0;
    }
    return -1;
}
