
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct aw_ccung_softc {intptr_t nresets; int mtx; TYPE_1__* resets; } ;
typedef int device_t ;
struct TYPE_2__ {char* offset; int shift; } ;


 int CCU_READ4 (struct aw_ccung_softc*,char*) ;
 int CCU_WRITE4 (struct aw_ccung_softc*,char*,int) ;
 struct aw_ccung_softc* device_get_softc (int ) ;
 int dprintf (char*,char*,int) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;

__attribute__((used)) static int
aw_ccung_reset_assert(device_t dev, intptr_t id, bool reset)
{
 struct aw_ccung_softc *sc;
 uint32_t val;

 sc = device_get_softc(dev);

 dprintf("%sassert reset id %ld\n", reset ? "" : "De", id);
 if (id >= sc->nresets || sc->resets[id].offset == 0)
  return (0);

 mtx_lock(&sc->mtx);
 val = CCU_READ4(sc, sc->resets[id].offset);
 dprintf("offset=%x Read %x\n", sc->resets[id].offset, val);
 if (reset)
  val &= ~(1 << sc->resets[id].shift);
 else
  val |= 1 << sc->resets[id].shift;
 dprintf("offset=%x Write %x\n", sc->resets[id].offset, val);
 CCU_WRITE4(sc, sc->resets[id].offset, val);
 mtx_unlock(&sc->mtx);

 return (0);
}
