
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct padlock_softc {int sc_cid; } ;
typedef int device_t ;


 int crypto_unregister_all (int ) ;
 struct padlock_softc* device_get_softc (int ) ;

__attribute__((used)) static int
padlock_detach(device_t dev)
{
 struct padlock_softc *sc = device_get_softc(dev);

 crypto_unregister_all(sc->sc_cid);
 return (0);
}
