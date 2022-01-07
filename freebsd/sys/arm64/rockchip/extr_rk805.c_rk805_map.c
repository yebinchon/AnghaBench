
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct rk805_softc {int nregs; TYPE_2__** regs; } ;
typedef scalar_t__ phandle_t ;
typedef int pcell_t ;
typedef int device_t ;
struct TYPE_4__ {scalar_t__ xref; TYPE_1__* def; } ;
struct TYPE_3__ {intptr_t id; } ;


 int ERANGE ;
 struct rk805_softc* device_get_softc (int ) ;

__attribute__((used)) static int
rk805_map(device_t dev, phandle_t xref, int ncells,
    pcell_t *cells, intptr_t *id)
{
 struct rk805_softc *sc;
 int i;

 sc = device_get_softc(dev);

 for (i = 0; i < sc->nregs; i++) {
  if (sc->regs[i]->xref == xref) {
   *id = sc->regs[i]->def->id;
   return (0);
  }
 }

 return (ERANGE);
}
