
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct s10_svc_softc {int vmem; } ;
struct s10_svc_mem {int size; int paddr; } ;
typedef int device_t ;


 struct s10_svc_softc* device_get_softc (int ) ;
 int vmem_free (int ,int ,int ) ;

void
s10_svc_free_memory(device_t dev, struct s10_svc_mem *mem)
{
 struct s10_svc_softc *sc;

 sc = device_get_softc(dev);

 vmem_free(sc->vmem, mem->paddr, mem->size);
}
