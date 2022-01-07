
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tegra_sdhci_softc {void* max_clk; void* quirks; } ;
struct ofw_compat_data {scalar_t__ ocd_data; } ;
typedef int phandle_t ;
typedef void* pcell_t ;
typedef int device_t ;
typedef int cid ;


 int BUS_PROBE_DEFAULT ;
 int ENXIO ;
 scalar_t__ OF_getencprop (int ,char*,void**,int) ;
 int compat_data ;
 struct tegra_sdhci_softc* device_get_softc (int ) ;
 int device_set_desc (int ,char*) ;
 int ofw_bus_get_node (int ) ;
 scalar_t__ ofw_bus_is_compatible (int ,char*) ;
 struct ofw_compat_data* ofw_bus_search_compatible (int ,int ) ;
 int ofw_bus_status_okay (int ) ;

__attribute__((used)) static int
tegra_sdhci_probe(device_t dev)
{
 struct tegra_sdhci_softc *sc;
 phandle_t node;
 pcell_t cid;
 const struct ofw_compat_data *cd;

 sc = device_get_softc(dev);
 if (!ofw_bus_status_okay(dev))
  return (ENXIO);

 if (ofw_bus_is_compatible(dev, "nvidia,tegra124-sdhci")) {
  device_set_desc(dev, "Tegra SDHCI controller");
 } else
  return (ENXIO);
 cd = ofw_bus_search_compatible(dev, compat_data);
 if (cd->ocd_data == 0)
  return (ENXIO);

 node = ofw_bus_get_node(dev);


 if ((OF_getencprop(node, "quirks", &cid, sizeof(cid))) > 0)
  sc->quirks = cid;
 if ((OF_getencprop(node, "max-frequency", &cid, sizeof(cid))) > 0)
  sc->max_clk = cid;

 return (BUS_PROBE_DEFAULT);
}
