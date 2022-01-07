
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ vm_paddr_t ;
typedef scalar_t__ vm_ooffset_t ;
typedef int vm_memattr_t ;
struct ti_pruss_softc {int sc_mem_res; } ;
struct cdev {int si_drv1; } ;
typedef int device_t ;


 int ENOSPC ;
 int VM_MEMATTR_UNCACHEABLE ;
 struct ti_pruss_softc* device_get_softc (int ) ;
 scalar_t__ rman_get_size (int ) ;
 scalar_t__ rman_get_start (int ) ;

__attribute__((used)) static int
ti_pruss_mmap(struct cdev *cdev, vm_ooffset_t offset, vm_paddr_t *paddr,
    int nprot, vm_memattr_t *memattr)
{
 device_t dev = cdev->si_drv1;
 struct ti_pruss_softc *sc = device_get_softc(dev);

 if (offset >= rman_get_size(sc->sc_mem_res))
  return (ENOSPC);
 *paddr = rman_get_start(sc->sc_mem_res) + offset;
 *memattr = VM_MEMATTR_UNCACHEABLE;

 return (0);
}
