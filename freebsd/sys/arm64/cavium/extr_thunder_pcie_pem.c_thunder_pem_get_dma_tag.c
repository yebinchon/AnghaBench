
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thunder_pem_softc {int dmat; } ;
typedef int device_t ;
typedef int bus_dma_tag_t ;


 struct thunder_pem_softc* device_get_softc (int ) ;

__attribute__((used)) static bus_dma_tag_t
thunder_pem_get_dma_tag(device_t dev, device_t child)
{
 struct thunder_pem_softc *sc;

 sc = device_get_softc(dev);
 return (sc->dmat);
}
