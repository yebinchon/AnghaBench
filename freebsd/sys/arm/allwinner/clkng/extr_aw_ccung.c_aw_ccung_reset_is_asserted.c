
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct aw_ccung_softc {intptr_t nresets; int mtx; TYPE_1__* resets; } ;
typedef int device_t ;
struct TYPE_2__ {scalar_t__ offset; int shift; } ;


 int CCU_READ4 (struct aw_ccung_softc*,scalar_t__) ;
 struct aw_ccung_softc* device_get_softc (int ) ;
 int dprintf (char*,scalar_t__,int) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;

__attribute__((used)) static int
aw_ccung_reset_is_asserted(device_t dev, intptr_t id, bool *reset)
{
 struct aw_ccung_softc *sc;
 uint32_t val;

 sc = device_get_softc(dev);

 if (id >= sc->nresets || sc->resets[id].offset == 0)
  return (0);

 mtx_lock(&sc->mtx);
 val = CCU_READ4(sc, sc->resets[id].offset);
 dprintf("offset=%x Read %x\n", sc->resets[id].offset, val);
 *reset = (val & (1 << sc->resets[id].shift)) != 0 ? 0 : 1;
 mtx_unlock(&sc->mtx);

 return (0);
}
