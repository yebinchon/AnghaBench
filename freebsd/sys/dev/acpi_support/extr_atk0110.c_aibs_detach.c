
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct aibs_softc {int * sc_asens_all; int * sc_asens_fan; int * sc_asens_temp; int * sc_asens_volt; } ;
typedef int device_t ;


 int M_DEVBUF ;
 struct aibs_softc* device_get_softc (int ) ;
 int free (int *,int ) ;

__attribute__((used)) static int
aibs_detach(device_t dev)
{
 struct aibs_softc *sc = device_get_softc(dev);

 if (sc->sc_asens_volt != ((void*)0))
  free(sc->sc_asens_volt, M_DEVBUF);
 if (sc->sc_asens_temp != ((void*)0))
  free(sc->sc_asens_temp, M_DEVBUF);
 if (sc->sc_asens_fan != ((void*)0))
  free(sc->sc_asens_fan, M_DEVBUF);
 if (sc->sc_asens_all != ((void*)0))
  free(sc->sc_asens_all, M_DEVBUF);
 return (0);
}
