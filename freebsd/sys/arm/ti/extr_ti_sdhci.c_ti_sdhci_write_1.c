
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
struct ti_sdhci_softc {int dummy; } ;
struct sdhci_slot {int dummy; } ;
typedef int device_t ;
typedef int bus_size_t ;


 int MMCHS_CON ;
 int MMCHS_CON_DW8 ;
 int RD4 (struct ti_sdhci_softc*,int) ;
 int SDHCI_CTRL_8BITBUS ;
 int SDHCI_HOST_CONTROL ;
 int WR4 (struct ti_sdhci_softc*,int,int) ;
 struct ti_sdhci_softc* device_get_softc (int ) ;
 int device_printf (int ,char*) ;
 int ti_mmchs_read_4 (struct ti_sdhci_softc*,int ) ;
 int ti_mmchs_write_4 (struct ti_sdhci_softc*,int ,int) ;

__attribute__((used)) static void
ti_sdhci_write_1(device_t dev, struct sdhci_slot *slot, bus_size_t off,
    uint8_t val)
{
 struct ti_sdhci_softc *sc = device_get_softc(dev);
 uint32_t val32;
 val32 = RD4(sc, off & ~3);
 val32 &= ~(0xff << (off & 3) * 8);
 val32 |= (val << (off & 3) * 8);

 WR4(sc, off & ~3, val32);
}
