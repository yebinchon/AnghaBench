
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vmem_addr_t ;
struct sgx_softc {int epc_base; struct epc_page* epc_pages; int vmem_epc; } ;
struct epc_page {int dummy; } ;


 int ENOMEM ;
 int M_FIRSTFIT ;
 int M_NOWAIT ;
 int PAGE_SIZE ;
 scalar_t__ vmem_alloc (int ,int,int,int*) ;

__attribute__((used)) static int
sgx_get_epc_page(struct sgx_softc *sc, struct epc_page **epc)
{
 vmem_addr_t addr;
 int i;

 if (vmem_alloc(sc->vmem_epc, PAGE_SIZE, M_FIRSTFIT | M_NOWAIT,
     &addr) == 0) {
  i = (addr - sc->epc_base) / PAGE_SIZE;
  *epc = &sc->epc_pages[i];
  return (0);
 }

 return (ENOMEM);
}
