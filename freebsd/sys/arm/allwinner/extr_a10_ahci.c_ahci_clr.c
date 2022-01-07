
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct resource {int dummy; } ;
typedef int bus_size_t ;


 int ATA_INL (struct resource*,int ) ;
 int ATA_OUTL (struct resource*,int ,int ) ;

__attribute__((used)) static void inline
ahci_clr(struct resource *m, bus_size_t off, uint32_t clr)
{
 uint32_t val = ATA_INL(m, off);

 val &= ~clr;
 ATA_OUTL(m, off, val);
}
