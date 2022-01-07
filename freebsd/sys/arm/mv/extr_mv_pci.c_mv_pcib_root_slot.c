
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
typedef int u_int ;
struct mv_pcib_softc {int sc_enable_find_root_slot; } ;
typedef int device_t ;


 scalar_t__ MV_DEV_ARMADA38X ;
 scalar_t__ MV_DEV_FAMILY_MASK ;
 int PCIR_DEVICE ;
 int PCIR_DEVICE_LENGTH ;
 int PCIR_VENDOR ;
 int PCIR_VENDOR_LENGTH ;
 scalar_t__ PCI_VENDORID_MRVL ;
 struct mv_pcib_softc* device_get_softc (int ) ;
 scalar_t__ mv_pcib_hw_cfgread (struct mv_pcib_softc*,int ,int ,int ,int ,int ) ;

__attribute__((used)) static int
mv_pcib_root_slot(device_t dev, u_int bus, u_int slot, u_int func)
{
 struct mv_pcib_softc *sc = device_get_softc(dev);
 uint32_t vendor, device;


 if (!sc->sc_enable_find_root_slot)
  return (slot == 0);

 vendor = mv_pcib_hw_cfgread(sc, bus, slot, func, PCIR_VENDOR,
     PCIR_VENDOR_LENGTH);
 device = mv_pcib_hw_cfgread(sc, bus, slot, func, PCIR_DEVICE,
     PCIR_DEVICE_LENGTH) & MV_DEV_FAMILY_MASK;

 return (vendor == PCI_VENDORID_MRVL && device == MV_DEV_ARMADA38X);
}
