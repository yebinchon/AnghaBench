
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int uint16_t ;
struct ti_sdhci_softc {int cmd_and_mode; } ;
struct sdhci_slot {scalar_t__ version; } ;
typedef int device_t ;
typedef int bus_size_t ;


 int MMCHS_SYSCTL_CLKD_MASK ;
 int MMCHS_SYSCTL_CLKD_SHIFT ;
 int RD4 (struct ti_sdhci_softc*,int) ;
 int SDHCI_CLOCK_CONTROL ;
 int SDHCI_COMMAND_FLAGS ;
 int SDHCI_DIVIDER_HI_MASK ;
 int SDHCI_DIVIDER_HI_SHIFT ;
 int SDHCI_DIVIDER_MASK ;
 int SDHCI_DIVIDER_MASK_LEN ;
 int SDHCI_DIVIDER_SHIFT ;
 scalar_t__ SDHCI_SPEC_300 ;
 int SDHCI_TRANSFER_MODE ;
 struct ti_sdhci_softc* device_get_softc (int ) ;

__attribute__((used)) static uint16_t
ti_sdhci_read_2(device_t dev, struct sdhci_slot *slot, bus_size_t off)
{
 struct ti_sdhci_softc *sc = device_get_softc(dev);
 uint32_t clkdiv, val32;
 if (off == SDHCI_CLOCK_CONTROL) {
  val32 = RD4(sc, SDHCI_CLOCK_CONTROL);
  clkdiv = ((val32 >> MMCHS_SYSCTL_CLKD_SHIFT) &
      MMCHS_SYSCTL_CLKD_MASK) / 2;
  val32 &= ~(MMCHS_SYSCTL_CLKD_MASK << MMCHS_SYSCTL_CLKD_SHIFT);
  val32 |= (clkdiv & SDHCI_DIVIDER_MASK) << SDHCI_DIVIDER_SHIFT;
  if (slot->version >= SDHCI_SPEC_300)
   val32 |= ((clkdiv >> SDHCI_DIVIDER_MASK_LEN) &
       SDHCI_DIVIDER_HI_MASK) << SDHCI_DIVIDER_HI_SHIFT;
  return (val32 & 0xffff);
 }




 if (off == SDHCI_TRANSFER_MODE) {
  return (sc->cmd_and_mode >> 16);
 } else if (off == SDHCI_COMMAND_FLAGS) {
  return (sc->cmd_and_mode & 0x0000ffff);
 }

 return ((RD4(sc, off & ~3) >> (off & 3) * 8) & 0xffff);
}
