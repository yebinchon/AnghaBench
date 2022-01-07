
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct axp8xx_softc {int nregs; TYPE_2__** regs; } ;
typedef scalar_t__ phandle_t ;
typedef int pcell_t ;
typedef int device_t ;
struct TYPE_4__ {scalar_t__ xref; TYPE_1__* def; } ;
struct TYPE_3__ {intptr_t id; } ;


 int ENXIO ;
 struct axp8xx_softc* device_get_softc (int ) ;

__attribute__((used)) static int
axp8xx_regdev_map(device_t dev, phandle_t xref, int ncells, pcell_t *cells,
    intptr_t *num)
{
 struct axp8xx_softc *sc;
 int i;

 sc = device_get_softc(dev);
 for (i = 0; i < sc->nregs; i++) {
  if (sc->regs[i] == ((void*)0))
   continue;
  if (sc->regs[i]->xref == xref) {
   *num = sc->regs[i]->def->id;
   return (0);
  }
 }

 return (ENXIO);
}
