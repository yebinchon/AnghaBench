
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct blake2_softc {int dying; int lock; int cid; } ;
typedef int device_t ;


 int blake2_cleanctx () ;
 int crypto_unregister_all (int ) ;
 struct blake2_softc* device_get_softc (int ) ;
 int rw_destroy (int *) ;
 int rw_wlock (int *) ;
 int rw_wunlock (int *) ;

__attribute__((used)) static int
blake2_detach(device_t dev)
{
 struct blake2_softc *sc;

 sc = device_get_softc(dev);

 rw_wlock(&sc->lock);
 sc->dying = 1;
 rw_wunlock(&sc->lock);
 crypto_unregister_all(sc->cid);

 rw_destroy(&sc->lock);

 blake2_cleanctx();

 return (0);
}
