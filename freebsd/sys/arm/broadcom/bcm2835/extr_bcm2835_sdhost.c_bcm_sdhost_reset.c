
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
struct sdhci_slot {int dummy; } ;
struct bcm_sdhost_softc {int sdhci_present_state; } ;
typedef int device_t ;


 int DELAY (int) ;
 int HC_ARGUMENT ;
 int HC_BLOCKCOUNT ;
 int HC_BLOCKSIZE ;
 int HC_CLOCKDIVISOR ;
 int HC_CLOCKDIVISOR_MAXVAL ;
 int HC_COMMAND ;
 int HC_DBG_FIFO_THRESH_MASK ;
 int HC_DBG_FIFO_THRESH_READ_SHIFT ;
 int HC_DBG_FIFO_THRESH_WRITE_SHIFT ;
 int HC_DEBUG ;
 int HC_FIFO_THRESH_READ ;
 int HC_FIFO_THRESH_WRITE ;
 int HC_HOSTCONFIG ;
 int HC_HOSTSTATUS ;
 int HC_HSTCF_INT_BUSY ;
 int HC_HSTST_RESET ;
 int HC_POWER ;
 int HC_TIMEOUTCOUNTER ;
 int HC_TIMEOUT_DEFAULT ;
 int RD4 (struct bcm_sdhost_softc*,int ) ;
 int SDHCI_CARD_PRESENT ;
 int SDHCI_CARD_STABLE ;
 int SDHCI_WRITE_PROTECT ;
 int WR4 (struct bcm_sdhost_softc*,int ,int) ;
 struct bcm_sdhost_softc* device_get_softc (int ) ;

__attribute__((used)) static void
bcm_sdhost_reset(device_t dev, struct sdhci_slot *slot)
{
 struct bcm_sdhost_softc *sc = device_get_softc(dev);
 u_int32_t dbg;

 WR4(sc, HC_POWER, 0);

 WR4(sc, HC_COMMAND, 0);
 WR4(sc, HC_ARGUMENT, 0);
 WR4(sc, HC_TIMEOUTCOUNTER, HC_TIMEOUT_DEFAULT);
 WR4(sc, HC_CLOCKDIVISOR, 0);
 WR4(sc, HC_HOSTSTATUS, HC_HSTST_RESET);
 WR4(sc, HC_HOSTCONFIG, 0);
 WR4(sc, HC_BLOCKSIZE, 0);
 WR4(sc, HC_BLOCKCOUNT, 0);

 dbg = RD4(sc, HC_DEBUG);
 dbg &= ~( (HC_DBG_FIFO_THRESH_MASK << HC_DBG_FIFO_THRESH_READ_SHIFT) |
           (HC_DBG_FIFO_THRESH_MASK << HC_DBG_FIFO_THRESH_WRITE_SHIFT) );
 dbg |= (HC_FIFO_THRESH_READ << HC_DBG_FIFO_THRESH_READ_SHIFT) |
        (HC_FIFO_THRESH_WRITE << HC_DBG_FIFO_THRESH_WRITE_SHIFT);
 WR4(sc, HC_DEBUG, dbg);

 DELAY(250000);

 WR4(sc, HC_POWER, 1);

 DELAY(250000);

 sc->sdhci_present_state = SDHCI_CARD_PRESENT | SDHCI_CARD_STABLE |
  SDHCI_WRITE_PROTECT;

 WR4(sc, HC_CLOCKDIVISOR, HC_CLOCKDIVISOR_MAXVAL);
 WR4(sc, HC_HOSTCONFIG, HC_HSTCF_INT_BUSY);
}
