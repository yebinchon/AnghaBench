
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct tmc_softc {scalar_t__ dev_type; int * event; int nev; } ;
struct endpoint {int dummy; } ;
struct TYPE_2__ {int flags; } ;
struct coresight_event {TYPE_1__ etr; } ;
typedef int device_t ;


 scalar_t__ CORESIGHT_ETF ;
 scalar_t__ CORESIGHT_ETR ;
 int ETR_FLAG_RELEASE ;
 int KASSERT (int,char*) ;
 int atomic_fetchadd_int (int *,int) ;
 struct tmc_softc* device_get_softc (int ) ;
 int tmc_stop (int ) ;

__attribute__((used)) static void
tmc_disable(device_t dev, struct endpoint *endp,
    struct coresight_event *event)
{
 struct tmc_softc *sc;
 uint32_t nev;

 sc = device_get_softc(dev);


 if (sc->dev_type == CORESIGHT_ETF)
  return;

 KASSERT(sc->dev_type == CORESIGHT_ETR, ("Wrong dev_type"));

 if (event->etr.flags & ETR_FLAG_RELEASE) {
  event->etr.flags &= ~ETR_FLAG_RELEASE;
  nev = atomic_fetchadd_int(&sc->nev, -1);
  if (nev == 1) {
   tmc_stop(dev);
   sc->event = ((void*)0);
  }
 }
}
