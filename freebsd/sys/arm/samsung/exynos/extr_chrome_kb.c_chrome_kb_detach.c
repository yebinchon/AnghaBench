
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ckb_softc {int * keymap; } ;
typedef int device_t ;


 int M_DEVBUF ;
 struct ckb_softc* device_get_softc (int ) ;
 int free (int *,int ) ;

__attribute__((used)) static int
chrome_kb_detach(device_t dev)
{
 struct ckb_softc *sc;

 sc = device_get_softc(dev);

 if (sc->keymap != ((void*)0)) {
  free(sc->keymap, M_DEVBUF);
 }

 return 0;
}
