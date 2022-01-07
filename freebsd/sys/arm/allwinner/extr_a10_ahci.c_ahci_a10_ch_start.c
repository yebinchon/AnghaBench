
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct ahci_channel {int r_mem; } ;


 int AHCI_P0DMACR ;
 int ATA_INL (int ,int ) ;
 int ATA_OUTL (int ,int ,int) ;

__attribute__((used)) static void
ahci_a10_ch_start(struct ahci_channel *ch)
{
 uint32_t reg;





 reg = ATA_INL(ch->r_mem, AHCI_P0DMACR);
 reg &= ~0xff00;
 reg |= 0x4400;
 ATA_OUTL(ch->r_mem, AHCI_P0DMACR, reg);
}
