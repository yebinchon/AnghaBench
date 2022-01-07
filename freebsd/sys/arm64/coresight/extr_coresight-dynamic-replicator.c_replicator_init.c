
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct replicator_softc {int res; } ;
typedef int device_t ;


 int CORESIGHT_LAR ;
 int CORESIGHT_UNLOCK ;
 int bus_write_4 (int ,int ,int ) ;
 struct replicator_softc* device_get_softc (int ) ;

__attribute__((used)) static int
replicator_init(device_t dev)
{
 struct replicator_softc *sc;

 sc = device_get_softc(dev);


 bus_write_4(sc->res, CORESIGHT_LAR, CORESIGHT_UNLOCK);

 return (0);
}
