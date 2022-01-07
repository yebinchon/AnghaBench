
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct replicator_softc {int res; } ;
struct endpoint {scalar_t__ reg; } ;
struct coresight_event {int dummy; } ;
typedef int device_t ;


 int REPLICATOR_IDFILTER0 ;
 int REPLICATOR_IDFILTER1 ;
 int bus_write_4 (int ,int ,int) ;
 struct replicator_softc* device_get_softc (int ) ;

__attribute__((used)) static int
replicator_enable(device_t dev, struct endpoint *endp,
    struct coresight_event *event)
{
 struct replicator_softc *sc;

 sc = device_get_softc(dev);


 if (endp->reg == 0) {
  bus_write_4(sc->res, REPLICATOR_IDFILTER0, 0x00);
  bus_write_4(sc->res, REPLICATOR_IDFILTER1, 0xff);
 } else {
  bus_write_4(sc->res, REPLICATOR_IDFILTER0, 0xff);
  bus_write_4(sc->res, REPLICATOR_IDFILTER1, 0x00);
 }

 return (0);
}
