
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ccp_softc {int detaching; int hw_features; int lock; int cid; } ;
typedef int device_t ;


 int VERSION_CAP_TRNG ;
 int ccp_free_queues (struct ccp_softc*) ;
 int ccp_hw_detach (int ) ;
 int crypto_unregister_all (int ) ;
 struct ccp_softc* device_get_softc (int ) ;
 struct ccp_softc* g_ccp_softc ;
 int mtx_destroy (int *) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int random_ccp ;
 int random_source_deregister (int *) ;

__attribute__((used)) static int
ccp_detach(device_t dev)
{
 struct ccp_softc *sc;

 sc = device_get_softc(dev);

 mtx_lock(&sc->lock);
 sc->detaching = 1;
 mtx_unlock(&sc->lock);

 crypto_unregister_all(sc->cid);
 if (g_ccp_softc == sc && (sc->hw_features & VERSION_CAP_TRNG) != 0)
  random_source_deregister(&random_ccp);

 ccp_hw_detach(dev);
 ccp_free_queues(sc);

 if (g_ccp_softc == sc)
  g_ccp_softc = ((void*)0);

 mtx_destroy(&sc->lock);
 return (0);
}
