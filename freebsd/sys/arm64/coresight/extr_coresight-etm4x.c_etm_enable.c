
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct etm_softc {int res; } ;
struct endpoint {int dummy; } ;
struct coresight_event {int dummy; } ;
typedef int device_t ;


 int TRCPRGCTLR ;
 int TRCPRGCTLR_EN ;
 int TRCSTATR ;
 int TRCSTATR_IDLE ;
 int bus_read_4 (int ,int ) ;
 int bus_write_4 (int ,int ,int) ;
 struct etm_softc* device_get_softc (int ) ;
 int etm_prepare (int ,struct coresight_event*) ;
 int panic (char*) ;

__attribute__((used)) static int
etm_enable(device_t dev, struct endpoint *endp,
    struct coresight_event *event)
{
 struct etm_softc *sc;
 uint32_t reg;

 sc = device_get_softc(dev);

 etm_prepare(dev, event);


 bus_write_4(sc->res, TRCPRGCTLR, TRCPRGCTLR_EN);


 do {
  reg = bus_read_4(sc->res, TRCSTATR);
 } while ((reg & TRCSTATR_IDLE) == 1);

 if ((bus_read_4(sc->res, TRCPRGCTLR) & TRCPRGCTLR_EN) == 0)
  panic("etm is not enabled\n");

 return (0);
}
