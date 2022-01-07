
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xref ;
struct am335x_lcd_softc {scalar_t__ sc_hdmi_framer; } ;
typedef scalar_t__ phandle_t ;
typedef int hdmi_xref ;
typedef int device_t ;


 scalar_t__ OF_child (scalar_t__) ;
 int OF_getencprop (scalar_t__,char*,scalar_t__*,int) ;
 scalar_t__ OF_node_from_xref (scalar_t__) ;
 scalar_t__ OF_parent (scalar_t__) ;
 scalar_t__ OF_peer (scalar_t__) ;
 scalar_t__ OF_xref_from_node (scalar_t__) ;
 struct am335x_lcd_softc* device_get_softc (int ) ;
 scalar_t__ ofw_bus_find_child (scalar_t__,char*) ;
 scalar_t__ ofw_bus_get_node (int ) ;

__attribute__((used)) static void
am335x_read_hdmi_property(device_t dev)
{
 phandle_t node, xref;
 phandle_t endpoint;
 phandle_t hdmi_xref;
 struct am335x_lcd_softc *sc;

 sc = device_get_softc(dev);
 node = ofw_bus_get_node(dev);
 sc->sc_hdmi_framer = 0;




 if (OF_getencprop(node, "hdmi", &hdmi_xref, sizeof(hdmi_xref)) != -1) {
  sc->sc_hdmi_framer = hdmi_xref;
  return;
 }







 node = ofw_bus_find_child(node, "port");


 if (node == 0)
  return;

 for (endpoint = OF_child(node); endpoint != 0; endpoint = OF_peer(endpoint)) {
  if (OF_getencprop(endpoint, "remote-endpoint", &xref, sizeof(xref)) != -1) {

   node = OF_node_from_xref(xref);

   node = OF_parent(node);

   node = OF_parent(node);

   sc->sc_hdmi_framer = OF_xref_from_node(OF_parent(node));
   if (sc->sc_hdmi_framer != 0)
    return;
  }
 }
}
