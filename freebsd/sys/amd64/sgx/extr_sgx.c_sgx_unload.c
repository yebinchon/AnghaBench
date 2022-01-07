
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sgx_softc {int state; int mtx; int mtx_encls; int vmem_epc; int sgx_cdev; int enclaves; } ;


 int EBUSY ;
 int SGX_STATE_RUNNING ;
 int TAILQ_EMPTY (int *) ;
 int destroy_dev (int ) ;
 int mtx_destroy (int *) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int sgx_put_epc_area (struct sgx_softc*) ;
 struct sgx_softc sgx_sc ;
 int vmem_destroy (int ) ;

__attribute__((used)) static int
sgx_unload(void)
{
 struct sgx_softc *sc;

 sc = &sgx_sc;

 if ((sc->state & SGX_STATE_RUNNING) == 0)
  return (0);

 mtx_lock(&sc->mtx);
 if (!TAILQ_EMPTY(&sc->enclaves)) {
  mtx_unlock(&sc->mtx);
  return (EBUSY);
 }
 sc->state &= ~SGX_STATE_RUNNING;
 mtx_unlock(&sc->mtx);

 destroy_dev(sc->sgx_cdev);

 vmem_destroy(sc->vmem_epc);
 sgx_put_epc_area(sc);

 mtx_destroy(&sc->mtx_encls);
 mtx_destroy(&sc->mtx);

 return (0);
}
