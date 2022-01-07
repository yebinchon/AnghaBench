
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct aesni_softc {int cid; } ;
typedef int device_t ;


 int aesni_cleanctx () ;
 int crypto_unregister_all (int ) ;
 struct aesni_softc* device_get_softc (int ) ;

__attribute__((used)) static int
aesni_detach(device_t dev)
{
 struct aesni_softc *sc;

 sc = device_get_softc(dev);

 crypto_unregister_all(sc->cid);

 aesni_cleanctx();

 return (0);
}
