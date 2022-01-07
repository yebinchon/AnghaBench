
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tda19988_softc {int sc_cec_addr; int sc_edid_len; int sc_edid; int sc_addr; int sc_dev; } ;
typedef int phandle_t ;
typedef int device_t ;


 int EDID_LENGTH ;
 int M_DEVBUF ;
 int M_WAITOK ;
 int M_ZERO ;
 int OF_device_register_xref (int ,int ) ;
 int OF_xref_from_node (int ) ;
 struct tda19988_softc* device_get_softc (int ) ;
 int device_set_desc (int ,char*) ;
 int iicbus_get_addr (int ) ;
 int malloc (int ,int ,int) ;
 int ofw_bus_get_node (int ) ;
 int tda19988_start (struct tda19988_softc*) ;

__attribute__((used)) static int
tda19988_attach(device_t dev)
{
 struct tda19988_softc *sc;
 phandle_t node;

 sc = device_get_softc(dev);

 sc->sc_dev = dev;
 sc->sc_addr = iicbus_get_addr(dev);
 sc->sc_cec_addr = (0x34 << 1);
 sc->sc_edid = malloc(EDID_LENGTH, M_DEVBUF, M_WAITOK | M_ZERO);
 sc->sc_edid_len = EDID_LENGTH;

 device_set_desc(dev, "NXP TDA19988 HDMI transmitter");

 node = ofw_bus_get_node(dev);
 OF_device_register_xref(OF_xref_from_node(node), dev);

 tda19988_start(sc);

 return (0);
}
