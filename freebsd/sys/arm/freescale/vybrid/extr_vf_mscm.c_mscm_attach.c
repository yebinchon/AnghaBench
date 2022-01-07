
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mscm_softc {int * res; int bsh; int bst; } ;
typedef int device_t ;


 int ENXIO ;
 int MSCM_IRSPRC (int) ;
 int VF_NINT ;
 int WRITE2 (struct mscm_softc*,int ,int) ;
 scalar_t__ bus_alloc_resources (int ,int ,int *) ;
 struct mscm_softc* device_get_softc (int ) ;
 int device_printf (int ,char*) ;
 int mscm_spec ;
 int rman_get_bushandle (int ) ;
 int rman_get_bustag (int ) ;

__attribute__((used)) static int
mscm_attach(device_t dev)
{
 struct mscm_softc *sc;
 int i;

 sc = device_get_softc(dev);

 if (bus_alloc_resources(dev, mscm_spec, sc->res)) {
  device_printf(dev, "could not allocate resources\n");
  return (ENXIO);
 }


 sc->bst = rman_get_bustag(sc->res[0]);
 sc->bsh = rman_get_bushandle(sc->res[0]);


 for (i = 0; i < VF_NINT; i++)
  WRITE2(sc, MSCM_IRSPRC(i), 1);

 return (0);
}
