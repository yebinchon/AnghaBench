
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct tmc_softc {scalar_t__ dev_type; int res; struct coresight_event* event; } ;
struct endpoint {int dummy; } ;
struct TYPE_2__ {scalar_t__ low; scalar_t__ offset; int cycle; } ;
struct coresight_event {TYPE_1__ etr; } ;
typedef int device_t ;


 scalar_t__ CORESIGHT_ETF ;
 int STS_FULL ;
 int TMC_RWP ;
 int TMC_STS ;
 int bus_read_4 (int ,int ) ;
 struct tmc_softc* device_get_softc (int ) ;
 int tmc_start (int ) ;
 int tmc_stop (int ) ;

__attribute__((used)) static int
tmc_read(device_t dev, struct endpoint *endp,
    struct coresight_event *event)
{
 struct tmc_softc *sc;
 uint32_t cur_ptr;

 sc = device_get_softc(dev);

 if (sc->dev_type == CORESIGHT_ETF)
  return (0);





 if (sc->event != event)
  return (0);

 if (bus_read_4(sc->res, TMC_STS) & STS_FULL) {
  event->etr.offset = 0;
  event->etr.cycle++;
  tmc_stop(dev);
  tmc_start(dev);
 } else {
  cur_ptr = bus_read_4(sc->res, TMC_RWP);
  event->etr.offset = (cur_ptr - event->etr.low);
 }

 return (0);
}
