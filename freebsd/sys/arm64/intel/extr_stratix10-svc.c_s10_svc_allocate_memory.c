
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ vm_offset_t ;
struct s10_svc_softc {int vmem; } ;
struct s10_svc_mem {int size; int paddr; scalar_t__ vaddr; scalar_t__ fill; } ;
typedef int device_t ;


 int EINVAL ;
 int ENOMEM ;
 int M_FIRSTFIT ;
 int M_NOWAIT ;
 struct s10_svc_softc* device_get_softc (int ) ;
 int device_printf (int ,char*) ;
 scalar_t__ pmap_mapdev (int ,int) ;
 scalar_t__ vmem_alloc (int ,int,int,int *) ;

int
s10_svc_allocate_memory(device_t dev, struct s10_svc_mem *mem, int size)
{
 struct s10_svc_softc *sc;

 sc = device_get_softc(dev);

 if (size <= 0)
  return (EINVAL);

 if (vmem_alloc(sc->vmem, size,
     M_FIRSTFIT | M_NOWAIT, &mem->paddr)) {
  device_printf(dev, "Can't allocate memory\n");
  return (ENOMEM);
 }

 mem->size = size;
 mem->fill = 0;
 mem->vaddr = (vm_offset_t)pmap_mapdev(mem->paddr, mem->size);

 return (0);
}
