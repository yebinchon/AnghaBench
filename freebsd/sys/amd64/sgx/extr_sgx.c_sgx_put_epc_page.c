
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ vmem_addr_t ;
struct sgx_softc {int vmem_epc; scalar_t__ epc_base; } ;
struct epc_page {int index; } ;


 int PAGE_SIZE ;
 int vmem_free (int ,scalar_t__,int) ;

__attribute__((used)) static void
sgx_put_epc_page(struct sgx_softc *sc, struct epc_page *epc)
{
 vmem_addr_t addr;

 if (epc == ((void*)0))
  return;

 addr = (epc->index * PAGE_SIZE) + sc->epc_base;
 vmem_free(sc->vmem_epc, addr, PAGE_SIZE);
}
