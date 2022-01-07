
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct funnel_softc {int res; } ;
typedef int device_t ;


 int CORESIGHT_LAR ;
 int CORESIGHT_UNLOCK ;
 int FUNNEL_DEVICEID ;
 int bus_read_4 (int ,int ) ;
 int bus_write_4 (int ,int ,int ) ;
 struct funnel_softc* device_get_softc (int ) ;
 int dprintf (char*,int ) ;

__attribute__((used)) static int
funnel_init(device_t dev)
{
 struct funnel_softc *sc;

 sc = device_get_softc(dev);


 bus_write_4(sc->res, CORESIGHT_LAR, CORESIGHT_UNLOCK);

 dprintf("Device ID: %x\n", bus_read_4(sc->res, FUNNEL_DEVICEID));

 return (0);
}
