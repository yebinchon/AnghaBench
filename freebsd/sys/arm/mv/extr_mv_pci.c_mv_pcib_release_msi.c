
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct mv_pcib_softc {int sc_msi_mtx; int sc_msi_bitmap; int sc_msi_supported; } ;
typedef int device_t ;


 int ENOTSUP ;
 scalar_t__ MSI_IRQ ;
 int clrbit (int *,scalar_t__) ;
 struct mv_pcib_softc* device_get_softc (int ) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;

__attribute__((used)) static int
mv_pcib_release_msi(device_t dev, device_t child, int count, int *irqs)
{
 struct mv_pcib_softc *sc;
 u_int i;

 sc = device_get_softc(dev);
 if(!sc->sc_msi_supported)
  return (ENOTSUP);

 mtx_lock(&sc->sc_msi_mtx);

 for (i = 0; i < count; i++)
  clrbit(&sc->sc_msi_bitmap, irqs[i] - MSI_IRQ);

 mtx_unlock(&sc->sc_msi_mtx);
 return (0);
}
