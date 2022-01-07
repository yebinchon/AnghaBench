
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct padctl_softc {int dev; } ;
struct padctl_port {int * supply_vbus; } ;
struct padctl_lane {int name; } ;


 int RD4 (struct padctl_softc*,int ) ;
 int USB2_BIAS_PAD_CTL0_PD ;
 int WR4 (struct padctl_softc*,int ,int ) ;
 int XUSB_PADCTL_USB2_BIAS_PAD_CTL0 ;
 int device_printf (int ,char*,...) ;
 int regulator_enable (int *) ;
 struct padctl_port* search_lane_port (struct padctl_softc*,struct padctl_lane*) ;

__attribute__((used)) static int
usb2_powerdown(struct padctl_softc *sc, struct padctl_lane *lane)
{
 uint32_t reg;
 struct padctl_port *port;
 int rv;

 port = search_lane_port(sc, lane);
 if (port == ((void*)0)) {
  device_printf(sc->dev, "Cannot find port for lane: %s\n",
      lane->name);
 }
 reg = RD4(sc, XUSB_PADCTL_USB2_BIAS_PAD_CTL0);
 reg |= USB2_BIAS_PAD_CTL0_PD;
 WR4(sc, XUSB_PADCTL_USB2_BIAS_PAD_CTL0, reg);

 if (port != ((void*)0) && port->supply_vbus != ((void*)0)) {
  rv = regulator_enable(port->supply_vbus);
  if (rv != 0) {
   device_printf(sc->dev,
       "Cannot disable vbus regulator\n");
   return (rv);
  }
 }
 return (0);
}
