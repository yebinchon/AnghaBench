
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct ti_sdhci_softc {scalar_t__ force_card_present; scalar_t__ disable_highspeed; } ;
struct sdhci_slot {int dummy; } ;
typedef int device_t ;
typedef int bus_size_t ;


 int RD4 (struct ti_sdhci_softc*,int ) ;
 int SDHCI_CAN_DO_HISPD ;
 int SDHCI_CAPABILITIES ;
 int SDHCI_CARD_PRESENT ;
 int SDHCI_PRESENT_STATE ;
 struct ti_sdhci_softc* device_get_softc (int ) ;

__attribute__((used)) static uint32_t
ti_sdhci_read_4(device_t dev, struct sdhci_slot *slot, bus_size_t off)
{
 struct ti_sdhci_softc *sc = device_get_softc(dev);
 uint32_t val32;

 val32 = RD4(sc, off);





 if (off == SDHCI_CAPABILITIES && sc->disable_highspeed)
  val32 &= ~SDHCI_CAN_DO_HISPD;




 if (off == SDHCI_PRESENT_STATE && sc->force_card_present)
  val32 |= SDHCI_CARD_PRESENT;

 return (val32);
}
