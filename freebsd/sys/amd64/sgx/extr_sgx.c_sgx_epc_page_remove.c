
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sgx_softc {int mtx_encls; } ;
struct epc_page {scalar_t__ base; } ;


 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int sgx_eremove (void*) ;

__attribute__((used)) static void
sgx_epc_page_remove(struct sgx_softc *sc,
    struct epc_page *epc)
{

 mtx_lock(&sc->mtx_encls);
 sgx_eremove((void *)epc->base);
 mtx_unlock(&sc->mtx_encls);
}
