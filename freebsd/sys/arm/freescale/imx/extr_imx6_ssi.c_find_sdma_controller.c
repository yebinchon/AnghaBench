
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sdma_softc {int dummy; } ;
struct sc_info {struct sdma_softc* sdma_sc; int dev; void* sdma_ev_tx; void* sdma_ev_rx; } ;
typedef int phandle_t ;
typedef void* pcell_t ;
typedef int dts_value ;
typedef scalar_t__ device_t ;


 int DMAS_TOTAL ;
 int ENXIO ;
 int OF_getencprop (int,char*,void**,int) ;
 int OF_getproplen (int,char*) ;
 int OF_node_from_xref (void*) ;
 int devclass_find (char*) ;
 scalar_t__ devclass_get_device (int ,int ) ;
 struct sdma_softc* device_get_softc (scalar_t__) ;
 int device_printf (int ,char*,...) ;
 int ofw_bus_get_node (int ) ;

__attribute__((used)) static int
find_sdma_controller(struct sc_info *sc)
{
 struct sdma_softc *sdma_sc;
 phandle_t node, sdma_node;
 device_t sdma_dev;
 pcell_t dts_value[DMAS_TOTAL];
 int len;

 if ((node = ofw_bus_get_node(sc->dev)) == -1)
  return (ENXIO);

 if ((len = OF_getproplen(node, "dmas")) <= 0)
  return (ENXIO);

 if (len != sizeof(dts_value)) {
  device_printf(sc->dev,
      "\"dmas\" property length is invalid: %d (expected %d)",
      len, sizeof(dts_value));
  return (ENXIO);
 }

 OF_getencprop(node, "dmas", dts_value, sizeof(dts_value));

 sc->sdma_ev_rx = dts_value[1];
 sc->sdma_ev_tx = dts_value[5];

 sdma_node = OF_node_from_xref(dts_value[0]);

 sdma_sc = ((void*)0);

 sdma_dev = devclass_get_device(devclass_find("sdma"), 0);
 if (sdma_dev)
  sdma_sc = device_get_softc(sdma_dev);

 if (sdma_sc == ((void*)0)) {
  device_printf(sc->dev, "No sDMA found. Can't operate\n");
  return (ENXIO);
 }

 sc->sdma_sc = sdma_sc;

 return (0);
}
