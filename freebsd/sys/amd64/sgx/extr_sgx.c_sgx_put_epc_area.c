
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sgx_softc {int epc_pages; scalar_t__ epc_size; scalar_t__ epc_base; } ;


 int M_SGX ;
 int free (int ,int ) ;
 int vm_phys_fictitious_unreg_range (scalar_t__,scalar_t__) ;

__attribute__((used)) static void
sgx_put_epc_area(struct sgx_softc *sc)
{

 vm_phys_fictitious_unreg_range(sc->epc_base,
     sc->epc_base + sc->epc_size);

 free(sc->epc_pages, M_SGX);
}
