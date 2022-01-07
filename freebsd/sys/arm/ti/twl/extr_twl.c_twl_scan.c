
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;
struct twl_softc {int sc_scan_hook; int sc_subaddr_map; int sc_dev; } ;
typedef int device_t ;


 scalar_t__ TWL_CHIP_ID0 ;
 int TWL_INVALID_CHIP_ID ;
 int TWL_LOCK (struct twl_softc*) ;
 int TWL_MAX_SUBADDRS ;
 int TWL_UNLOCK (struct twl_softc*) ;
 int config_intrhook_disestablish (int *) ;
 struct twl_softc* device_get_softc (int ) ;
 int device_printf (int ,char*,scalar_t__) ;
 int memcpy (int ,scalar_t__*,int) ;
 int memset (scalar_t__*,int ,int) ;
 scalar_t__ twl_test_present (struct twl_softc*,scalar_t__) ;

__attribute__((used)) static void
twl_scan(void *dev)
{
 struct twl_softc *sc;
 unsigned i;
 uint8_t devs[TWL_MAX_SUBADDRS];
 uint8_t base = TWL_CHIP_ID0;

 sc = device_get_softc((device_t)dev);

 memset(devs, TWL_INVALID_CHIP_ID, TWL_MAX_SUBADDRS);




 for (i = 0; i < TWL_MAX_SUBADDRS; i++) {
  if (twl_test_present(sc, (base + i)) == 0) {
   devs[i] = (base + i);
   device_printf(sc->sc_dev, "Found (sub)device at 0x%02x\n", (base + i));
  }
 }

 TWL_LOCK(sc);
 memcpy(sc->sc_subaddr_map, devs, TWL_MAX_SUBADDRS);
 TWL_UNLOCK(sc);


 config_intrhook_disestablish(&sc->sc_scan_hook);
}
