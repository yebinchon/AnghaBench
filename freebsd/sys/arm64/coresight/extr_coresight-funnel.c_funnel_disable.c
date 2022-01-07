
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct funnel_softc {int res; } ;
struct endpoint {int reg; } ;
struct coresight_event {int dummy; } ;
typedef int device_t ;


 int FUNNEL_FUNCTL ;
 int bus_read_4 (int ,int ) ;
 int bus_write_4 (int ,int ,int) ;
 struct funnel_softc* device_get_softc (int ) ;

__attribute__((used)) static void
funnel_disable(device_t dev, struct endpoint *endp,
    struct coresight_event *event)
{
 struct funnel_softc *sc;
 uint32_t reg;

 sc = device_get_softc(dev);

 reg = bus_read_4(sc->res, FUNNEL_FUNCTL);
 reg &= ~(1 << endp->reg);
 bus_write_4(sc->res, FUNNEL_FUNCTL, reg);
}
