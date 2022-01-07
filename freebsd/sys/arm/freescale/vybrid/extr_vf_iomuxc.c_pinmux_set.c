
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct iomuxc_softc {int dev; } ;
typedef scalar_t__ phandle_t ;
typedef int pcell_t ;


 int IOMUXC (int) ;
 int MAX_MUX_LEN ;
 scalar_t__ OF_child (scalar_t__) ;
 scalar_t__ OF_finddevice (char*) ;
 int OF_getencprop (scalar_t__,char*,int*,int) ;
 int OF_getproplen (scalar_t__,char*) ;
 scalar_t__ OF_parent (scalar_t__) ;
 scalar_t__ OF_peer (scalar_t__) ;
 int WRITE4 (struct iomuxc_softc*,int ,int) ;
 int device_printf (int ,char*,int,int) ;
 int ofw_bus_node_status_okay (scalar_t__) ;

__attribute__((used)) static int
pinmux_set(struct iomuxc_softc *sc)
{
 phandle_t child, parent, root;
 pcell_t iomux_config[MAX_MUX_LEN];
 int len;
 int values;
 int pin;
 int pin_cfg;
 int i;

 root = OF_finddevice("/");
 len = 0;
 parent = root;


 for (child = OF_child(parent); child != 0; child = OF_peer(child)) {


  while (OF_child(child)) {
   parent = child;
   child = OF_child(child);
  }

  if (!ofw_bus_node_status_okay(child))
   continue;

  if ((len = OF_getproplen(child, "iomux_config")) > 0) {
   OF_getencprop(child, "iomux_config", iomux_config, len);

   values = len / (sizeof(uint32_t));
   for (i = 0; i < values; i += 2) {
    pin = iomux_config[i];
    pin_cfg = iomux_config[i+1];




    WRITE4(sc, IOMUXC(pin), pin_cfg);
   }
  }

  if (OF_peer(child) == 0) {

   child = parent;
   parent = OF_parent(child);
  }
 }

 return (0);
}
