
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usbphy_softc {int xcvr_setup_use_fuses; int xcvr_setup; int hsdiscon_level; int hssquelch_level; int xcvr_hsslew; int xcvr_lsrslew; int xcvr_lsfslew; int term_range_adj; int idle_wait_delay; int elastic_limit; int hssync_start_delay; } ;
typedef int phandle_t ;


 int ENXIO ;
 int OF_getencprop (int ,char*,int *,int) ;
 int OF_getproplen (int ,char*) ;

__attribute__((used)) static int
usbphy_utmi_read_params(struct usbphy_softc *sc, phandle_t node)
{
 int rv;

 rv = OF_getencprop(node, "nvidia,hssync-start-delay",
     &sc->hssync_start_delay, sizeof (sc->hssync_start_delay));
 if (rv <= 0)
  return (ENXIO);

 rv = OF_getencprop(node, "nvidia,elastic-limit",
     &sc->elastic_limit, sizeof (sc->elastic_limit));
 if (rv <= 0)
  return (ENXIO);

 rv = OF_getencprop(node, "nvidia,idle-wait-delay",
     &sc->idle_wait_delay, sizeof (sc->idle_wait_delay));
 if (rv <= 0)
  return (ENXIO);

 rv = OF_getencprop(node, "nvidia,term-range-adj",
     &sc->term_range_adj, sizeof (sc->term_range_adj));
 if (rv <= 0)
  return (ENXIO);

 rv = OF_getencprop(node, "nvidia,xcvr-lsfslew",
     &sc->xcvr_lsfslew, sizeof (sc->xcvr_lsfslew));
 if (rv <= 0)
  return (ENXIO);

 rv = OF_getencprop(node, "nvidia,xcvr-lsrslew",
     &sc->xcvr_lsrslew, sizeof (sc->xcvr_lsrslew));
 if (rv <= 0)
  return (ENXIO);

 rv = OF_getencprop(node, "nvidia,xcvr-hsslew",
     &sc->xcvr_hsslew, sizeof (sc->xcvr_hsslew));
 if (rv <= 0)
  return (ENXIO);

 rv = OF_getencprop(node, "nvidia,hssquelch-level",
     &sc->hssquelch_level, sizeof (sc->hssquelch_level));
 if (rv <= 0)
  return (ENXIO);

 rv = OF_getencprop(node, "nvidia,hsdiscon-level",
     &sc->hsdiscon_level, sizeof (sc->hsdiscon_level));
 if (rv <= 0)
  return (ENXIO);

 rv = OF_getproplen(node, "nvidia,xcvr-setup-use-fuses");
 if (rv >= 1) {
  sc->xcvr_setup_use_fuses = 1;
 } else {
  rv = OF_getencprop(node, "nvidia,xcvr-setup",
      &sc->xcvr_setup, sizeof (sc->xcvr_setup));
  if (rv <= 0)
   return (ENXIO);
 }

 return (0);
}
