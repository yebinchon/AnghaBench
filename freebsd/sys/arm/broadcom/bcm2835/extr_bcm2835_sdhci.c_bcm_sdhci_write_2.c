
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int uint16_t ;
struct sdhci_slot {int dummy; } ;
struct bcm_sdhci_softc {int need_update_blk; int blksz_and_count; int cmd_and_mode; } ;
typedef int device_t ;
typedef int bus_size_t ;


 int RD4 (struct bcm_sdhci_softc*,int) ;
 int SDHCI_BLOCK_COUNT ;
 int SDHCI_BLOCK_SIZE ;
 int SDHCI_COMMAND_FLAGS ;
 int SDHCI_TRANSFER_MODE ;
 int WR4 (struct bcm_sdhci_softc*,int,int) ;
 struct bcm_sdhci_softc* device_get_softc (int ) ;

__attribute__((used)) static void
bcm_sdhci_write_2(device_t dev, struct sdhci_slot *slot, bus_size_t off, uint16_t val)
{
 struct bcm_sdhci_softc *sc = device_get_softc(dev);
 uint32_t val32;
 if ((off == SDHCI_BLOCK_SIZE || off == SDHCI_BLOCK_COUNT) &&
     sc->need_update_blk)
  val32 = sc->blksz_and_count;
 else if (off == SDHCI_COMMAND_FLAGS)
  val32 = sc->cmd_and_mode;
 else
  val32 = RD4(sc, off & ~3);

 val32 &= ~(0xffff << (off & 3)*8);
 val32 |= (val << (off & 3)*8);

 if (off == SDHCI_TRANSFER_MODE)
  sc->cmd_and_mode = val32;
 else if (off == SDHCI_BLOCK_SIZE || off == SDHCI_BLOCK_COUNT) {
  sc->blksz_and_count = val32;
  sc->need_update_blk = 1;
 } else {
  if (off == SDHCI_COMMAND_FLAGS) {

   if (sc->need_update_blk) {
    WR4(sc, SDHCI_BLOCK_SIZE, sc->blksz_and_count);
    sc->need_update_blk = 0;
   }

   sc->cmd_and_mode = val32;
  }
  WR4(sc, off & ~3, val32);
 }
}
